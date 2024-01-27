package core;

import javax.swing.*;
import java.awt.*;

public class Helper {
    public static void setTheme() {
        optionPaneTR();
        for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
            if ("Nimbus".equals(info.getName())) {
                try {
                    UIManager.setLookAndFeel(info.getClassName());
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
                break;
            }
        }
    }

    public static void showMessage(String str) {
        String msg;
        String title;
        switch (str) {
            case "fill":
                msg = "Lütfen tüm alanları doldurunuz!";
                title = "HATA!";
                break;
            case "done":
                msg = "İşlem Başarılı!";
                title = "SONUÇ";
                break;
            case "notFound":
                msg = "Kayıt Bulunamadı!";
                title = "BULUNAMADI";
                break;
            case "error":
                msg = "Hatalı işlem yaptınız";
                title = "HATA";
            default:
                msg = str;
                title = "MESAJ";
        }
        JOptionPane.showMessageDialog(null, msg, title, JOptionPane.INFORMATION_MESSAGE);
    }

    public static boolean confirm(String str) {
        String msg;
        if (str.equals("sure")) {
            msg = "Bu işlemi yapmak istediğinize emin misin?";
        } else {
            msg = str;
        }
        return JOptionPane.showConfirmDialog(null, msg, "Emin misin?", JOptionPane.YES_NO_OPTION) == 0;
    }


    public static boolean isFieldEmpty(JTextField field) {
        return field.getText().trim().isEmpty();

    }

    public static boolean isFieldListEmpty(JTextField[] fieldList) {
        for (JTextField newFieldList : fieldList) {
            if (isFieldEmpty(newFieldList)) return true;
        }
        return false;
    }

    public static int getLocationPoint(String type, Dimension size) {

        return switch (type) {
            case "x" -> (Toolkit.getDefaultToolkit().getScreenSize().width - size.width) / 2;

            case "y" -> (Toolkit.getDefaultToolkit().getScreenSize().height - size.height) / 2;
            default -> 0;
        };
    }

    public static void optionPaneTR() {
        UIManager.put("OptionPane.okButtonText", "Tamam");
        UIManager.put("OptionPane.yesButtonText", "Evet");
        UIManager.put("OptionPane.noButtonText", "Hayır");
    }
}
