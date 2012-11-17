package com.dd4.common.object;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import junit.framework.TestCase;

import com.dd4.common.jdbc.PDBConnection;
import com.dd4.common.jdbc.StatsConnection;
import com.dd4.common.jdbc.StatsSQLImp;
import com.dd4.common.jpa.EntityManagerHelper;
import com.dd4.common.log.EspLogger;


public class DD4TestCase extends TestCase {
	static{
		try {
			EspLogger.init(false, EspLogger.LEVEL.MESSAGE);
			EntityManagerHelper.init("url", "mayfiee", "edison", System.getProperty("user.name").toLowerCase());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void PrintSQLStats(){
		EspLogger.message(this, "******************************** SQL Stats *******************************************");
		Connection con=null;
		try {
			con = PDBConnection.getInstance().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(con instanceof StatsConnection)
			for(StatsSQLImp sql:((StatsConnection)con).getTimedSQLStatements())
				EspLogger.message(this, sql.getReportOutput());
	}
}
