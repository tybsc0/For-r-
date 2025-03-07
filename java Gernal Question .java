1. Create an applet to display the messages with given font ,size  and color. 
Display UNIVERSITY OF MUMBAI with font serif with bold and italic effect with size 50 
and color magenta. 
Display TYBSc (Computer Science ) with font MSOutlook serif, bold with size 40 & color 
red. 
Display COMPUTER PROGRAMMING with Garamond font, bold and italic and size 40 in 
pink color.
>>>>>>>
import java.awt.*;
 import java.applet.Applet;
 public class q1 extends Applet
 {
 public void paint(Graphics g)
 {
 g.setColor(Color.magenta);
 Font f1 = new Font("SANS_SERIF",Font.BOLD+Font.ITALIC,50);
 g.setFont(f1);
 g.drawString("University Of Mumbai",150,40);
 g.setColor(Color.red);
 Font f2 = new Font("MS_OUTLOOK_SERIF",Font.BOLD,40);
 g.setFont(f2);
 g.drawString("TYBSc(Computer Science)",150,200);
 g.setColor(Color.pink);
 Font f3 = new Font("GARAMOND",Font.BOLD+Font.ITALIC,40);
 g.setFont(f3);
 g.drawString("Computer Programing",150,250);
 }
 }
 /*
 <applet code = "q1.class" width="400" height="400">
 </applet>
 */ 

Q.2> Write java applet to insert the username and password of a person using HTML tag 
and display it with applet viewer in front of the message “USER ID ” and “PASSWORD”
>>>>>>>>

 import java.awt.*;
 import java.applet.Applet;
 public class q2 extends Applet
 {
 public void paint(Graphics g)
 {
 String str1,str2;
 str1=getParameter("user");
 str2=getParameter("password");
 g.drawString("USER NAME = "+str1,10,20);
 g.drawString("PASSWORD = "+str2,10,70);
 }
}
 /*
 <applet code="q2.class" width="400" height="400">
 <param name="user" value="R.J.COLLEGE">
 <param name="password" value="STUDENT">
 </applet>
 */

3>.Create an applet containing 2 labels and 2 textboxes to accept name and age of a 
student. Include a label called “Languages Known” followed by some checkboxes 
showing various languages. By default, checkbox labeled English should be on. 

>>>>>>>>>
 import java.awt.*;
 import java.applet.Applet;
 public class q3 extends Applet
 {
 Label l1,l2,l3;
 Checkbox c1,c2,c3;
 TextField t1,t2;
 public void init()
 {
 l1=new Label("Name");
 l2=new Label("Age");
 l3=new Label("Languages");
 c1=new Checkbox("English",true);
 c2=new Checkbox("Hindi");
 c3=new Checkbox("Marathi");
 t1=new TextField(20);
 t2=new TextField(10);
 add(l1); add(t1);
 add(l2); add(t2);
 add(l3);
 add(c1);
 add(c2);
 add(c3);
 }
 }
 /*
 <applet code="q3.class" width="400" height="400">
 </applet>
 */

Q4.>  Create an applet showing 10 buttons whose text should be from 0 to 9.  Use a loop to 
create and add these 10 buttons. 
>>>>>>>>
import java.awt.*;
 import java.applet.Applet;
 public class q4 extends Applet
 {
 Button b[] = new Button[10];
 public void init()
 {
 int i;
 for(i=0;i<10;i++)
 {
 b[i] = new Button(Integer.toString(i));
 add(b[i]);
 }
 }
 }
 /*
 <applet code = "q4.class" width="400" height="400">
 </applet>
 */

Q5.> Create an Applet to display 10 buttons having text from numbers 0 to 9. Display them 
in a Grid Form of size 4X3. 
>>>>>>>>>>
 import java.awt.*;
 import java.applet.Applet;
 public class q5 extends Applet
 {
 Button b[] = new Button[10];
 public void init()
 {
 GridLayout gd1 = new GridLayout(4,3,20,20);
 setLayout(gd1);
 int i;
 for(i=0;i<10;i++)
 {
 b[i] = new Button(Integer.toString(i));
 add(b[i]);
 }
 }
 }
 /*
 <applet code = "q5.class" width="400" height="400">
</applet>
 */

Q6.> Create an applet program in Java on which blue colored filled circles are formed as 
soon as the user clicks any where on the applet. 
>>>>>>>>
 import java.awt.*;
 import java.awt.event.*;
 import java.applet.Applet;
 public class q6 extends Applet implements MouseListener
 {
 public void mouseEntered(MouseEvent m){}
 public void mouseExited(MouseEvent m){}
 public void mousePressed(MouseEvent m){}
 public void mouseReleased(MouseEvent m){}
 public void mouseClicked(MouseEvent m)
 {
 Graphics g = getGraphics();
 g.setColor(Color.blue);
 g.fillOval(m.getX(),m.getY(),30,30);
 }
 public void init()
 {
 addMouseListener(this);
 }
 }
 /*
 <applet code="q6.class" width="400" height="400">
 </applet>
 */

Q.7>  Create an applet to accept a number from user(in a text field) and display its square 
and cube  as output on another Textfield. 
>>>>>>>>>>
 import java.awt.*;
 import java.awt.event.*;
 import java.applet.Applet;
 public class q7 extends Applet implements ActionListener
 {
 Label l1;
 TextField t1,t2;
 Button b1,b2;
public void init()
 {
 l1=new Label("Enter the no.");
 t1=new TextField(10);
 t2=new TextField(10);
 b1=new Button("Square");
 b2=new Button("Cube");
 t2.setEditable(false);
 add(l1); add(t1);
 add(t2);
 add(b1); add(b2);
 b1.addActionListener(this);
 b2.addActionListener(this);
 }
 public void actionPerformed(ActionEvent e)
 {
 int x,y,z;
 x=Integer.parseInt(t1.getText());
 y=x*x;
 z=x*x*x;
 if(e.getSource()==b1)
 t2.setText("Square is "+y);
 else
 t2.setText("Cube is "+z);
 }
 }
 /*
 <applet code="q7.class" width="400" height="400">
 </applet>
 */

Q8.>  Create an applet to calculate and display Simple Interest for given principle amount at 
given rate of interest for given number of years. 
>>>>>>>>>>
 import java.awt.*;
 import java.awt.event.*;
 import java.applet.Applet;
 public class q8 extends Applet implements ActionListener
 {
 Label l1,l2,l3;
 TextField t1,t2,t3,t4;
 Button b1;
GridLayout g = new GridLayout(4,2,20,20);
 public void init()
 {
 l1=new Label("Principle Amount");
 l2=new Label("R.O.I");
 l3=new Label("Duration");
 t1=new TextField(10);
 t2=new TextField(10);
 t3=new TextField(10);
 t4=new TextField(10);
 b1=new Button("CLICK");
 t4.setEditable(false);
 setLayout(g);
 add(l1); add(t1);
 add(l2); add(t2);
 add(l3); add(t3);
 add(b1); add(t4);
 b1.addActionListener(this);
}
 public void actionPerformed(ActionEvent e)
 {
 int p,r,n;
 float si;
 p=Integer.parseInt(t1.getText());
 r=Integer.parseInt(t2.getText());
 n=Integer.parseInt(t3.getText());
 si=(p*n*r)/100.0f;
 t4.setText("Simple Interest = "+si);
 }
 }
 /*
 <applet code="q8.class" width="400" height="400">
 </applet>
 */ 

Q9.> Create an applet to display 4 buttons in 4 regions of an applet using border layout. 
The button selected should be displayed in textbox placed at center.  
>>>>>>>>
 import java.awt.*;
 import java.awt.event.*;
 import java.applet.Applet;
 public class q9 extends Applet implements ActionListener
 {
Button b1,b2,b3,b4;
 TextField t1;
 BorderLayout l1 = new BorderLayout(20,20);
 public void init()
 {
 b1=new Button("North");
 b2=new Button("South");
 b3=new Button("East");
 b4=new Button("West");
 t1=new TextField(30);
 setLayout(l1);
 add(b1, BorderLayout.NORTH);
 add(b2, BorderLayout.SOUTH);
 add(b3, BorderLayout.EAST);
 add(b4, BorderLayout.WEST);
 add(t1, BorderLayout.CENTER);
 b1.addActionListener(this);
 b2.addActionListener(this);
 b3.addActionListener(this);
 b4.addActionListener(this);
 Font f1 = new Font("ARIAL",Font.BOLD,80);
 t1.setFont(f1);
 t1.setEditable(false);
}
 public void actionPerformed(ActionEvent e)
 {
 if(e.getSource()==b1)
 {
 t1.setForeground(Color.red);
 t1.setText("Region Selected- North");
 }
 else if(e.getSource()==b3)
 {
 t1.setForeground(Color.green);
 t1.setText("Region Selected- East");
 }
 else if(e.getSource()==b2)
 {
 t1.setForeground(Color.blue);
 t1.setText("Region Selected- South");
 }
 else
 {
t1.setForeground(Color.pink);
 t1.setText("Region Selected- West");
 }
 }
 }
 /*
 <applet code="q9.class" width="400" height="400">
 </applet>
 */

Q10.> Create an Applet containing a Textarea and 3 Radio buttons with options Red, Green 
and Blue. The Text area’s text colour should be changed depending upon the colour 
option chosen by the user.
>>>>>>>>>>>>>
 import java.awt.*;
 import java.awt.event.*;
 import java.applet.Applet;
 public class q10 extends Applet implements ItemListener
 {
 Label l1;
 TextArea t1;
 CheckboxGroup cg;
 Checkbox c1,c2,c3;
 public void init()
 {
 l1=new Label("Enter Your Feedback");
 t1=new TextArea(4,20);
 cg=new CheckboxGroup();
 c1=new Checkbox("Red",cg,false);
 c2=new Checkbox("Green",cg,false);
 c3=new Checkbox("Blue",cg,false);
 add(l1);
 add(t1);
 add(c1); add(c2); add(c3);
 c1.addItemListener(this);
 c2.addItemListener(this);
 c3.addItemListener(this);
 }
 public void itemStateChanged(ItemEvent e)
 {
 if(e.getSource()==c1)
 t1.setForeground(Color.red);
 else if(e.getSource()==c2)
 t1.setForeground(Color.green);
else
 t1.setForeground(Color.blue);
 }
 }
 /*
 <applet code="q10.class" width="400" height="400">
 </applet>
 */

