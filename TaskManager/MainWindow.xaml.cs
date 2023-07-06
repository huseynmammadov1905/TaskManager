using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TaskManager
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{

		public string Text
		{
			get { return (string)GetValue(TextProperty); }
			set { SetValue(TextProperty, value); }
		}

		// Using a DependencyProperty as the backing store for Text.  This enables animation, styling, binding, etc...
		public static readonly DependencyProperty TextProperty =
			DependencyProperty.Register("Text", typeof(string), typeof(MainWindow));


		public ObservableCollection<Process> Processes
		{
			get { return (ObservableCollection<Process>)GetValue(ProcessesProperty); }
			set { SetValue(ProcessesProperty, value); }
		}

		// Using a DependencyProperty as the backing store for Processes.  This enables animation, styling, binding, etc...
		public static readonly DependencyProperty ProcessesProperty =
			DependencyProperty.Register("Processes", typeof(ObservableCollection<Process>), typeof(MainWindow));

		public Process SelectProcess { get;set; }
		

		public MainWindow()
		{			
			Processes = new ObservableCollection<Process>();
			List<Process> list = new List<Process>();
			list = Process.GetProcesses().ToList();
			foreach (Process prcs in list)
			{
				Processes.Add(prcs);
			}

			DataContext = this;
		}

		private void Button_Click(object sender, RoutedEventArgs e)
		{
			if (sender is Button btn)
			{
				if (btn.Name == "End")
				{
					if (LV.SelectedItem != null)
					{

						SelectProcess.Kill();
						Processes.Remove(SelectProcess);

					}
				}
				if (btn.Name == "Cr")
				{
					if (tb.Text != string.Empty)
					{
						try
						{
							ProcessStartInfo psi = new();
							psi.FileName = tb.Text;
							Process.Start(psi);
						}
						catch (Exception ex)
						{

							MessageBox.Show(ex.Message);
						}
					}
					else
					{
						MessageBox.Show("ProcessName boshdur");
					}
				}

			}
		}

	}
}
