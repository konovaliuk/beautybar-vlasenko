package finalproj.beautybar.manager;

import javax.mail.*;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.sql.Timestamp;
import java.util.Properties;

public class EmailSender {

    final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
    final String from = "klementinaklementina7@gmail.com";
    final String username = from;
    final String password = "XVQ9ajekl2QIWVBULI";

    private static EmailSender instance;

    public static EmailSender getInstance() {
        if (instance == null) {
            instance = new EmailSender();
        }
        return instance;
    }

    /**
     * Sends an email
     *
     * @param to
     * @param timestamp
     * @param master
     * @throws MessagingException
     */
    public void sendEmail(String to, Timestamp timestamp, String master) throws MessagingException {
        /** Get system properties
         *
         */
        Properties properties = System.getProperties();

        properties.setProperty("mail.smtp.host", "smtp.gmail.com");
        properties.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        properties.setProperty("mail.smtp.socketFactory.fallback", "false");
        properties.setProperty("mail.smtp.port", "465");
        properties.setProperty("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.debug", "true");
        properties.put("mail.store.protocol", "pop3");
        properties.put("mail.transport.protocol", "smtp");
        try{
            Session session = Session.getDefaultInstance(properties,
                    new Authenticator(){
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }});

            /** Create a default MimeMessage object.
             *
             */
            MimeMessage message = new MimeMessage(session);

            /**Set From: header field of the header.
             *
             */
            message.setFrom(new InternetAddress(from));

            /** Set To: header field of the header.
             *
             */
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            /**
            * Set Subject: header field
            */
            message.setSubject("Запись в салон красоты");

            /** Now set the actual message
             *
             */
            String text = "Вы записаны в салон красоты\n"
                    + timestamp + "\n"
                    + "к мастеру " + master
                    + ".\n Оставьте, пожалуйста отзыв";
            message.setText(text);

            /** Send message
             *
             */
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}
