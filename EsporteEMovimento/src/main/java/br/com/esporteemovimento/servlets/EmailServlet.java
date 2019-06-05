package br.com.esporteemovimento.servlets;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmailServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String assunto = request.getParameter("assunto");
		String mensagem = request.getParameter("mensagem");

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("academiaesportemovimento@gmail.com", "Esporte#movimento");
			}
		});

		HttpSession sessao = request.getSession();

		try {

			Message message = new MimeMessage(session);
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse("academiaesportemovimento@gmail.com"));
			message.setSubject(assunto);
			message.setText("Cliente: " + nome + "\n" + "Email: " + email + "\n\n" + "" + mensagem);

			Transport.send(message);
			sessao.setAttribute("messageSucess", "Mensagem enviado com Sucesso! Obrigado pelo contato.");
			response.sendRedirect("contact.jsp");

		} catch (Exception e) {

			sessao.setAttribute("messageFailed",
					"Ocorreu um erro ao enviar a mensagem, por favor tente novamente mais tarde :(");
			response.sendRedirect("contact.jsp");

		}

	}

}
