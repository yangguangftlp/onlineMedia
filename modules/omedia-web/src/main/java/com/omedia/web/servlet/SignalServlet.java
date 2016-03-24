package com.omedia.web.servlet;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.websocket.MessageInbound;
import org.apache.catalina.websocket.StreamInbound;
import org.apache.catalina.websocket.WebSocketServlet;
import org.apache.catalina.websocket.WsOutbound;

import com.alibaba.fastjson.JSONObject;

/**
 * 信令服务
 */
public class SignalServlet extends WebSocketServlet {
	private static final long serialVersionUID = 1L;

	private static ArrayList<FeedbackMsgInbound> msgInboundList = new ArrayList<FeedbackMsgInbound>();

	@Override
	protected StreamInbound createWebSocketInbound(String arg0,
			HttpServletRequest request) {
		return new FeedbackMsgInbound(request.getParameter("uid"));
	}

	private class FeedbackMsgInbound extends MessageInbound {

		private WsOutbound wsOutbound;

		/**
		 * 唯一标示
		 */
		private String uid;

		public FeedbackMsgInbound(String uid) {
			this.uid = uid;
		}

		@Override
		protected void onBinaryMessage(ByteBuffer arg0) throws IOException {

		}

		@Override
		protected void onTextMessage(CharBuffer buffer) throws IOException {
			String msgContent = buffer.toString();
			System.out.println("Accept Message : " + msgContent);
			try {
				JSONObject params = JSONObject.parseObject(msgContent);

				for (FeedbackMsgInbound msgInbound : msgInboundList) {
					if (msgInbound.uid.equals(params.getString("touid"))) {
						msgInbound.wsOutbound.writeTextMessage(CharBuffer
								.wrap(params.toJSONString()));
						msgInbound.wsOutbound.flush();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		protected void onOpen(WsOutbound outbound) {
			try {
				this.wsOutbound = outbound;
				JSONObject dataMsg = new JSONObject();
				dataMsg.put("uid", System.currentTimeMillis());
				System.out.println("Open Client." + dataMsg.toJSONString());
				msgInboundList.add(this);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		@Override
		protected void onClose(int status) {
			System.out.println("Close Client.");
			msgInboundList.remove(this);
		}
	}
}
