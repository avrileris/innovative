package com.digitald4.common.model;
import com.digitald4.common.dao.GeneralDataDAO;
import javax.persistence.Entity;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
@Entity
@Table(schema="common",name="general_data")
@NamedQueries({
	@NamedQuery(name = "findByID", query="SELECT o FROM GeneralData o WHERE o.ID=?1"),//AUTO-GENERATED
	@NamedQuery(name = "findAll", query="SELECT o FROM GeneralData o"),//AUTO-GENERATED
	@NamedQuery(name = "findAllActive", query="SELECT o FROM GeneralData o"),//AUTO-GENERATED
	@NamedQuery(name = "findByGroup", query="SELECT o FROM GeneralData o WHERE o.GROUP_ID=?1"),//AUTO-GENERATED
})
@NamedNativeQueries({
	@NamedNativeQuery(name = "refresh", query="SELECT o.* FROM general_data o WHERE o.ID=?"),//AUTO-GENERATED
})
public class GeneralData extends GeneralDataDAO{
	public GeneralData(){
	}
	public GeneralData(Integer id){
		super(id);
	}
	public GeneralData(GeneralData orig){
		super(orig);
	}
	public static GeneralData getInstance(GeneralData group, Integer inGroupId) {
		for(GeneralData gd:getCollection(new String[]{""+PROPERTY.GROUP_ID},group==null?null:group.getId()))
			if(gd.getInGroupId()==inGroupId)
				return gd;
		System.err.println("Missing GeneralData ("+group+","+inGroupId+")");
		return null;
	}
	public String toString(){
		return getName();
	}
	
	@Override
	public int compareTo(Object o) {
		if(o instanceof GeneralData) {
			GeneralData gd = (GeneralData)o;
			if (getRank() < gd.getRank()) {
				return -1;
			}
			if (getRank() > gd.getRank()) {
				return 1;
			}
		}
		return super.compareTo(o);
	}
}
