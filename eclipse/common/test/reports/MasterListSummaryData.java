package reports;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;

import com.dd4.common.reports.DataSource;
import com.dd4.common.reports.ReportData;


import net.sf.jasperreports.engine.JRDataSource;

public class MasterListSummaryData implements ReportData {
	
	public JRDataSource createDataSource() {
		DataSource dataSource = new DataSource("Title", "Program", "OD", "PIN", "Budget");
		dataSource.add("Bunker Sub: Add 46.8MVAR 115kV switched cap bank ", "TSP STV", toDate(2012, 6, 1), "6822", new BigDecimal(600));
		dataSource.add("Padua Sub:  Install a 28.8 MVAR, 66 kV switched capacitor bank", "TSP STV", toDate(2012, 6, 1), "6910", new BigDecimal(160));
		dataSource.add("WALNUT SUB: INSTALL A NEW 28.8MVAR 66KV", "TSP STV", toDate(2012, 6, 1), "5082", new BigDecimal(480));
		
		dataSource.add("Bunker Sub: Add 46.8MVAR 115kV switched cap bank ", "TSP STL", toDate(2012, 6, 1), "6822", new BigDecimal(200));
		dataSource.add("Padua Sub:  Install a 28.8 MVAR, 66 kV switched capacitor bank", "TSP STL", toDate(2012, 6, 1), "6910", new BigDecimal(460));
		
		dataSource.add("WALNUT SUB: INSTALL A NEW 28.8MVAR 66KV", "ABank", toDate(2012, 6, 1), "5082", new BigDecimal(1080));
		return dataSource;
	}
	
	private Date toDate(int year, int month, int day) {
		Calendar c = Calendar.getInstance();
		c.set(Calendar.YEAR, year);
		c.set(Calendar.MONTH, month - 1);
		c.set(Calendar.DAY_OF_MONTH, day);
		return c.getTime();
	}
}
