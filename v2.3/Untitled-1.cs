using System.Runtime.InteropServices;
using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;

namespace WindowsApplication406
{
	/// <summary>
	/// Summary description for Form1.
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
	{
	
		#region VS.NET Code

		private System.Windows.Forms.Timer timer1;
		private System.ComponentModel.IContainer components;

		public Form1()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();

			//
			// TODO: Add any constructor code after InitializeComponent call
			//
		}

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			this.timer1 = new System.Windows.Forms.Timer(this.components);
			// 
			// timer1
			// 
			this.timer1.Enabled = true;
			this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
			// 
			// Form1
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.ClientSize = new System.Drawing.Size(292, 273);
			this.Name = "Form1";
			this.Text = "Form1";
			this.Load += new System.EventHandler(this.Form1_Load);

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main() 
		{
			Application.Run(new Form1());
		}
		#endregion



		[DllImport("gdi32.dll")]
		public static extern int GetPixel (IntPtr hdc, Int16 x, Int16 y);


		[DllImport("user32.dll")]
		private static extern IntPtr GetDC (IntPtr hwnd);

		// Store the desktop decive context handle here
		private IntPtr desktopDc;

		private void Form1_Load(object sender, System.EventArgs e)
		{
			desktopDc = GetDC(IntPtr.Zero);
		}

		private void timer1_Tick(object sender, System.EventArgs e)
		{
			Point pt = MousePosition;
			int colorVal = GetPixel (desktopDc, (Int16)pt.X, (Int16)pt.Y);
			int r = colorVal % 256;
			colorVal = (int)(colorVal/256);
			int g = colorVal % 256;
			colorVal = (int)(colorVal/256);
			int b = colorVal % 256;

			Color c = Color.FromArgb(r,g,b);//(c.R,c.G,c.B);
			this.BackColor = c;
		}

	}
}