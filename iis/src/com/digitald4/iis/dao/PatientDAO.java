package com.digitald4.iis.dao;
/**Copy Right Frank todo */
/**Description of class, (we need to get this from somewhere, database? xml?)*/
import com.digitald4.common.dao.DataAccessObject;
import com.digitald4.common.jpa.EntityManagerHelper;
import com.digitald4.common.jpa.PrimaryKey;
import com.digitald4.common.util.FormatText;
import com.digitald4.common.util.SortedList;
import com.digitald4.iis.model.Appointment;
import com.digitald4.common.model.GeneralData;
import com.digitald4.iis.model.Patient;
import com.digitald4.iis.model.Vendor;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.persistence.Cache;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.TypedQuery;
public abstract class PatientDAO extends DataAccessObject{
	public enum KEY_PROPERTY{ID};
	public enum PROPERTY{ID,REFERRAL_DATE,REFERRAL_SOURCE_ID,NAME,MR_NUM,DIANOSIS_ID,THERAPY_TYPE_ID,I_V_ACCESS_ID,START_OF_CARE,START_OF_CARE_DATE,SERVICE_ADDRESS,LATITUDE,LONGITUDE,BILLING_ID,RX,EST_LAST_DAY_OF_SERVICE,LABS,LABS_FREQUENCY,FIRST_RECERT_DUE,D_C_DATE,INFO_IN_S_O_S,SCHEDULING_PREFERENCE,REFERRAL_NOTE,REFERRAL_RESOLUTION_ID,REFERRAL_RESOLUTION_DATE,REFERRAL_RESOLUTION_NOTE,VENDOR_CONFIRMATION_DATE,NURSE_CONFIRMATION_DATE,PATIENT_CONFIRMATION_DATE,MEDS_DELIVERY_DATE,MEDS_CONFIRMATION_DATE,ACTIVE,BILLING_RATE,BILLING_RATE_2HR_SOC,BILLING_RATE_2HR_ROC,BILLING_FLAT,BILLING_FLAT_2HR_SOC,BILLING_FLAT_2HR_ROC,MILEAGE_RATE,DESCRIPTION};
	private Integer id;
	private Date referralDate;
	private Integer referralSourceId;
	private String name;
	private String mrNum;
	private Integer dianosisId;
	private Integer therapyTypeId;
	private Integer iVAccessId;
	private boolean startOfCare;
	private Date startOfCareDate;
	private String serviceAddress;
	private double latitude;
	private double longitude;
	private Integer billingId;
	private String rx;
	private Date estLastDayOfService;
	private boolean labs;
	private String labsFrequency;
	private Date firstRecertDue;
	private String dCDate;
	private boolean infoInSOS;
	private String schedulingPreference;
	private String referralNote;
	private Integer referralResolutionId;
	private Date referralResolutionDate;
	private String referralResolutionNote;
	private Date vendorConfirmationDate;
	private Date nurseConfirmationDate;
	private Date patientConfirmationDate;
	private Date medsDeliveryDate;
	private Date medsConfirmationDate;
	private boolean active = true;
	private double billingRate;
	private double billingRate2HrSoc;
	private double billingRate2HrRoc;
	private double billingFlat;
	private double billingFlat2HrSoc;
	private double billingFlat2HrRoc;
	private double mileageRate;
	private String description;
	private List<Appointment> appointments;
	private GeneralData dianosis;
	private GeneralData iVAccess;
	private GeneralData referralResolution;
	private Vendor referralSource;
	private GeneralData therapyType;
	private Vendor vendor;
	public static Patient getInstance(Integer id){
		return getInstance(id, true);
	}
	public static Patient getInstance(Integer id, boolean fetch){
		if(isNull(id))return null;
		EntityManager em = EntityManagerHelper.getEntityManager();
		PrimaryKey pk = new PrimaryKey(id);
		Cache cache = em.getEntityManagerFactory().getCache();
		Patient o = null;
		if(fetch || cache != null && cache.contains(Patient.class, pk))
			o = em.find(Patient.class, pk);
		return o;
	}
	public static List<Patient> getAll(){
		return getNamedCollection("findAll");
	}
	public static List<Patient> getAllActive(){
		return getNamedCollection("findAllActive");
	}
	public static List<Patient> getCollection(String[] props, Object... values){
		String qlString = "SELECT o FROM Patient o";
		if(props != null && props.length > 0){
			qlString += " WHERE";
			int p=0;
			for(String prop:props){
				if(p > 0)
					qlString +=" AND";
				if(values[p]==null)
					qlString += " o."+prop+" IS NULL";
				else
					qlString += " o."+prop+" = ?"+(p+1);
				p++;
			}
		}
		return getCollection(qlString,values);
	}
	public synchronized static List<Patient> getCollection(String jpql, Object... values){
		EntityManager em = EntityManagerHelper.getEntityManager();
		TypedQuery<Patient> tq = em.createQuery(jpql,Patient.class);
		if(values != null && values.length > 0){
			int p=1;
			for(Object value:values)
				if(value != null)
					tq = tq.setParameter(p++, value);
		}
		return tq.getResultList();
	}
	public synchronized static List<Patient> getNamedCollection(String name, Object... values){
		EntityManager em = EntityManagerHelper.getEntityManager();
		TypedQuery<Patient> tq = em.createNamedQuery(name,Patient.class);
		if(values != null && values.length > 0){
			int p=1;
			for(Object value:values)
				if(value != null)
					tq = tq.setParameter(p++, value);
		}
		return tq.getResultList();
	}
	public PatientDAO(){}
	public PatientDAO(Integer id){
		this.id=id;
	}
	public PatientDAO(PatientDAO orig){
		super(orig);
		copyFrom(orig);
	}
	public void copyFrom(PatientDAO orig){
		this.referralDate=orig.getReferralDate();
		this.referralSourceId=orig.getReferralSourceId();
		this.name=orig.getName();
		this.mrNum=orig.getMrNum();
		this.dianosisId=orig.getDianosisId();
		this.therapyTypeId=orig.getTherapyTypeId();
		this.iVAccessId=orig.getIVAccessId();
		this.startOfCare=orig.isStartOfCare();
		this.startOfCareDate=orig.getStartOfCareDate();
		this.serviceAddress=orig.getServiceAddress();
		this.latitude=orig.getLatitude();
		this.longitude=orig.getLongitude();
		this.billingId=orig.getBillingId();
		this.rx=orig.getRx();
		this.estLastDayOfService=orig.getEstLastDayOfService();
		this.labs=orig.isLabs();
		this.labsFrequency=orig.getLabsFrequency();
		this.firstRecertDue=orig.getFirstRecertDue();
		this.dCDate=orig.getDCDate();
		this.infoInSOS=orig.isInfoInSOS();
		this.schedulingPreference=orig.getSchedulingPreference();
		this.referralNote=orig.getReferralNote();
		this.referralResolutionId=orig.getReferralResolutionId();
		this.referralResolutionDate=orig.getReferralResolutionDate();
		this.referralResolutionNote=orig.getReferralResolutionNote();
		this.vendorConfirmationDate=orig.getVendorConfirmationDate();
		this.nurseConfirmationDate=orig.getNurseConfirmationDate();
		this.patientConfirmationDate=orig.getPatientConfirmationDate();
		this.medsDeliveryDate=orig.getMedsDeliveryDate();
		this.medsConfirmationDate=orig.getMedsConfirmationDate();
		this.active=orig.isActive();
		this.billingRate=orig.getBillingRate();
		this.billingRate2HrSoc=orig.getBillingRate2HrSoc();
		this.billingRate2HrRoc=orig.getBillingRate2HrRoc();
		this.billingFlat=orig.getBillingFlat();
		this.billingFlat2HrSoc=orig.getBillingFlat2HrSoc();
		this.billingFlat2HrRoc=orig.getBillingFlat2HrRoc();
		this.mileageRate=orig.getMileageRate();
		this.description=orig.getDescription();
	}
	public String getHashKey(){
		return getHashKey(getKeyValues());
	}
	public Object[] getKeyValues(){
		return new Object[]{id};
	}
	@Override
	public int hashCode(){
		return PrimaryKey.hashCode(getKeyValues());
	}
	@Id
	@GeneratedValue
	@Column(name="ID",nullable=false)
	public Integer getId(){
		return id;
	}
	public Patient setId(Integer id)throws Exception{
		if(!isSame(id, getId())){
			Integer oldValue = getId();
			this.id=id;
			setProperty("ID", id, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_DATE",nullable=true)
	public Date getReferralDate(){
		return referralDate;
	}
	public Patient setReferralDate(Date referralDate)throws Exception{
		if(!isSame(referralDate, getReferralDate())){
			Date oldValue = getReferralDate();
			this.referralDate=referralDate;
			setProperty("REFERRAL_DATE", referralDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_SOURCE_ID",nullable=false)
	public Integer getReferralSourceId(){
		return referralSourceId;
	}
	public Patient setReferralSourceId(Integer referralSourceId)throws Exception{
		if(!isSame(referralSourceId, getReferralSourceId())){
			Integer oldValue = getReferralSourceId();
			this.referralSourceId=referralSourceId;
			setProperty("REFERRAL_SOURCE_ID", referralSourceId, oldValue);
			referralSource=null;
		}
		return (Patient)this;
	}
	@Column(name="NAME",nullable=false,length=64)
	public String getName(){
		return name;
	}
	public Patient setName(String name)throws Exception{
		if(!isSame(name, getName())){
			String oldValue = getName();
			this.name=name;
			setProperty("NAME", name, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="MR_NUM",nullable=true,length=16)
	public String getMrNum(){
		return mrNum;
	}
	public Patient setMrNum(String mrNum)throws Exception{
		if(!isSame(mrNum, getMrNum())){
			String oldValue = getMrNum();
			this.mrNum=mrNum;
			setProperty("MR_NUM", mrNum, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="DIANOSIS_ID",nullable=true)
	public Integer getDianosisId(){
		return dianosisId;
	}
	public Patient setDianosisId(Integer dianosisId)throws Exception{
		if(!isSame(dianosisId, getDianosisId())){
			Integer oldValue = getDianosisId();
			this.dianosisId=dianosisId;
			setProperty("DIANOSIS_ID", dianosisId, oldValue);
			dianosis=null;
		}
		return (Patient)this;
	}
	@Column(name="THERAPY_TYPE_ID",nullable=true)
	public Integer getTherapyTypeId(){
		return therapyTypeId;
	}
	public Patient setTherapyTypeId(Integer therapyTypeId)throws Exception{
		if(!isSame(therapyTypeId, getTherapyTypeId())){
			Integer oldValue = getTherapyTypeId();
			this.therapyTypeId=therapyTypeId;
			setProperty("THERAPY_TYPE_ID", therapyTypeId, oldValue);
			therapyType=null;
		}
		return (Patient)this;
	}
	@Column(name="I_V_ACCESS_ID",nullable=true)
	public Integer getIVAccessId(){
		return iVAccessId;
	}
	public Patient setIVAccessId(Integer iVAccessId)throws Exception{
		if(!isSame(iVAccessId, getIVAccessId())){
			Integer oldValue = getIVAccessId();
			this.iVAccessId=iVAccessId;
			setProperty("I_V_ACCESS_ID", iVAccessId, oldValue);
			iVAccess=null;
		}
		return (Patient)this;
	}
	@Column(name="START_OF_CARE",nullable=true)
	public boolean isStartOfCare(){
		return startOfCare;
	}
	public Patient setStartOfCare(boolean startOfCare)throws Exception{
		if(!isSame(startOfCare, isStartOfCare())){
			boolean oldValue = isStartOfCare();
			this.startOfCare=startOfCare;
			setProperty("START_OF_CARE", startOfCare, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="START_OF_CARE_DATE",nullable=true)
	public Date getStartOfCareDate(){
		return startOfCareDate;
	}
	public Patient setStartOfCareDate(Date startOfCareDate)throws Exception{
		if(!isSame(startOfCareDate, getStartOfCareDate())){
			Date oldValue = getStartOfCareDate();
			this.startOfCareDate=startOfCareDate;
			setProperty("START_OF_CARE_DATE", startOfCareDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="SERVICE_ADDRESS",nullable=true,length=50)
	public String getServiceAddress(){
		return serviceAddress;
	}
	public Patient setServiceAddress(String serviceAddress)throws Exception{
		if(!isSame(serviceAddress, getServiceAddress())){
			String oldValue = getServiceAddress();
			this.serviceAddress=serviceAddress;
			setProperty("SERVICE_ADDRESS", serviceAddress, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="LATITUDE",nullable=true)
	public double getLatitude(){
		return latitude;
	}
	public Patient setLatitude(double latitude)throws Exception{
		if(!isSame(latitude, getLatitude())){
			double oldValue = getLatitude();
			this.latitude=latitude;
			setProperty("LATITUDE", latitude, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="LONGITUDE",nullable=true)
	public double getLongitude(){
		return longitude;
	}
	public Patient setLongitude(double longitude)throws Exception{
		if(!isSame(longitude, getLongitude())){
			double oldValue = getLongitude();
			this.longitude=longitude;
			setProperty("LONGITUDE", longitude, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_ID",nullable=true)
	public Integer getBillingId(){
		return billingId;
	}
	public Patient setBillingId(Integer billingId)throws Exception{
		if(!isSame(billingId, getBillingId())){
			Integer oldValue = getBillingId();
			this.billingId=billingId;
			setProperty("BILLING_ID", billingId, oldValue);
			vendor=null;
		}
		return (Patient)this;
	}
	@Column(name="RX",nullable=true,length=128)
	public String getRx(){
		return rx;
	}
	public Patient setRx(String rx)throws Exception{
		if(!isSame(rx, getRx())){
			String oldValue = getRx();
			this.rx=rx;
			setProperty("RX", rx, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="EST_LAST_DAY_OF_SERVICE",nullable=true)
	public Date getEstLastDayOfService(){
		return estLastDayOfService;
	}
	public Patient setEstLastDayOfService(Date estLastDayOfService)throws Exception{
		if(!isSame(estLastDayOfService, getEstLastDayOfService())){
			Date oldValue = getEstLastDayOfService();
			this.estLastDayOfService=estLastDayOfService;
			setProperty("EST_LAST_DAY_OF_SERVICE", estLastDayOfService, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="LABS",nullable=true)
	public boolean isLabs(){
		return labs;
	}
	public Patient setLabs(boolean labs)throws Exception{
		if(!isSame(labs, isLabs())){
			boolean oldValue = isLabs();
			this.labs=labs;
			setProperty("LABS", labs, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="LABS_FREQUENCY",nullable=true,length=64)
	public String getLabsFrequency(){
		return labsFrequency;
	}
	public Patient setLabsFrequency(String labsFrequency)throws Exception{
		if(!isSame(labsFrequency, getLabsFrequency())){
			String oldValue = getLabsFrequency();
			this.labsFrequency=labsFrequency;
			setProperty("LABS_FREQUENCY", labsFrequency, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="FIRST_RECERT_DUE",nullable=true)
	public Date getFirstRecertDue(){
		return firstRecertDue;
	}
	public Patient setFirstRecertDue(Date firstRecertDue)throws Exception{
		if(!isSame(firstRecertDue, getFirstRecertDue())){
			Date oldValue = getFirstRecertDue();
			this.firstRecertDue=firstRecertDue;
			setProperty("FIRST_RECERT_DUE", firstRecertDue, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="D_C_DATE",nullable=true,length=64)
	public String getDCDate(){
		return dCDate;
	}
	public Patient setDCDate(String dCDate)throws Exception{
		if(!isSame(dCDate, getDCDate())){
			String oldValue = getDCDate();
			this.dCDate=dCDate;
			setProperty("D_C_DATE", dCDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="INFO_IN_S_O_S",nullable=true)
	public boolean isInfoInSOS(){
		return infoInSOS;
	}
	public Patient setInfoInSOS(boolean infoInSOS)throws Exception{
		if(!isSame(infoInSOS, isInfoInSOS())){
			boolean oldValue = isInfoInSOS();
			this.infoInSOS=infoInSOS;
			setProperty("INFO_IN_S_O_S", infoInSOS, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="SCHEDULING_PREFERENCE",nullable=true,length=64)
	public String getSchedulingPreference(){
		return schedulingPreference;
	}
	public Patient setSchedulingPreference(String schedulingPreference)throws Exception{
		if(!isSame(schedulingPreference, getSchedulingPreference())){
			String oldValue = getSchedulingPreference();
			this.schedulingPreference=schedulingPreference;
			setProperty("SCHEDULING_PREFERENCE", schedulingPreference, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_NOTE",nullable=true,length=1024)
	public String getReferralNote(){
		return referralNote;
	}
	public Patient setReferralNote(String referralNote)throws Exception{
		if(!isSame(referralNote, getReferralNote())){
			String oldValue = getReferralNote();
			this.referralNote=referralNote;
			setProperty("REFERRAL_NOTE", referralNote, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_RESOLUTION_ID",nullable=true)
	public Integer getReferralResolutionId(){
		return referralResolutionId;
	}
	public Patient setReferralResolutionId(Integer referralResolutionId)throws Exception{
		if(!isSame(referralResolutionId, getReferralResolutionId())){
			Integer oldValue = getReferralResolutionId();
			this.referralResolutionId=referralResolutionId;
			setProperty("REFERRAL_RESOLUTION_ID", referralResolutionId, oldValue);
			referralResolution=null;
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_RESOLUTION_DATE",nullable=true)
	public Date getReferralResolutionDate(){
		return referralResolutionDate;
	}
	public Patient setReferralResolutionDate(Date referralResolutionDate)throws Exception{
		if(!isSame(referralResolutionDate, getReferralResolutionDate())){
			Date oldValue = getReferralResolutionDate();
			this.referralResolutionDate=referralResolutionDate;
			setProperty("REFERRAL_RESOLUTION_DATE", referralResolutionDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="REFERRAL_RESOLUTION_NOTE",nullable=true,length=512)
	public String getReferralResolutionNote(){
		return referralResolutionNote;
	}
	public Patient setReferralResolutionNote(String referralResolutionNote)throws Exception{
		if(!isSame(referralResolutionNote, getReferralResolutionNote())){
			String oldValue = getReferralResolutionNote();
			this.referralResolutionNote=referralResolutionNote;
			setProperty("REFERRAL_RESOLUTION_NOTE", referralResolutionNote, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="VENDOR_CONFIRMATION_DATE",nullable=true)
	public Date getVendorConfirmationDate(){
		return vendorConfirmationDate;
	}
	public Patient setVendorConfirmationDate(Date vendorConfirmationDate)throws Exception{
		if(!isSame(vendorConfirmationDate, getVendorConfirmationDate())){
			Date oldValue = getVendorConfirmationDate();
			this.vendorConfirmationDate=vendorConfirmationDate;
			setProperty("VENDOR_CONFIRMATION_DATE", vendorConfirmationDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="NURSE_CONFIRMATION_DATE",nullable=true)
	public Date getNurseConfirmationDate(){
		return nurseConfirmationDate;
	}
	public Patient setNurseConfirmationDate(Date nurseConfirmationDate)throws Exception{
		if(!isSame(nurseConfirmationDate, getNurseConfirmationDate())){
			Date oldValue = getNurseConfirmationDate();
			this.nurseConfirmationDate=nurseConfirmationDate;
			setProperty("NURSE_CONFIRMATION_DATE", nurseConfirmationDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="PATIENT_CONFIRMATION_DATE",nullable=true)
	public Date getPatientConfirmationDate(){
		return patientConfirmationDate;
	}
	public Patient setPatientConfirmationDate(Date patientConfirmationDate)throws Exception{
		if(!isSame(patientConfirmationDate, getPatientConfirmationDate())){
			Date oldValue = getPatientConfirmationDate();
			this.patientConfirmationDate=patientConfirmationDate;
			setProperty("PATIENT_CONFIRMATION_DATE", patientConfirmationDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="MEDS_DELIVERY_DATE",nullable=true)
	public Date getMedsDeliveryDate(){
		return medsDeliveryDate;
	}
	public Patient setMedsDeliveryDate(Date medsDeliveryDate)throws Exception{
		if(!isSame(medsDeliveryDate, getMedsDeliveryDate())){
			Date oldValue = getMedsDeliveryDate();
			this.medsDeliveryDate=medsDeliveryDate;
			setProperty("MEDS_DELIVERY_DATE", medsDeliveryDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="MEDS_CONFIRMATION_DATE",nullable=true)
	public Date getMedsConfirmationDate(){
		return medsConfirmationDate;
	}
	public Patient setMedsConfirmationDate(Date medsConfirmationDate)throws Exception{
		if(!isSame(medsConfirmationDate, getMedsConfirmationDate())){
			Date oldValue = getMedsConfirmationDate();
			this.medsConfirmationDate=medsConfirmationDate;
			setProperty("MEDS_CONFIRMATION_DATE", medsConfirmationDate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="ACTIVE",nullable=true)
	public boolean isActive(){
		return active;
	}
	public Patient setActive(boolean active)throws Exception{
		if(!isSame(active, isActive())){
			boolean oldValue = isActive();
			this.active=active;
			setProperty("ACTIVE", active, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_RATE",nullable=true)
	public double getBillingRate(){
		return billingRate;
	}
	public Patient setBillingRate(double billingRate)throws Exception{
		if(!isSame(billingRate, getBillingRate())){
			double oldValue = getBillingRate();
			this.billingRate=billingRate;
			setProperty("BILLING_RATE", billingRate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_RATE_2HR_SOC",nullable=true)
	public double getBillingRate2HrSoc(){
		return billingRate2HrSoc;
	}
	public Patient setBillingRate2HrSoc(double billingRate2HrSoc)throws Exception{
		if(!isSame(billingRate2HrSoc, getBillingRate2HrSoc())){
			double oldValue = getBillingRate2HrSoc();
			this.billingRate2HrSoc=billingRate2HrSoc;
			setProperty("BILLING_RATE_2HR_SOC", billingRate2HrSoc, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_RATE_2HR_ROC",nullable=true)
	public double getBillingRate2HrRoc(){
		return billingRate2HrRoc;
	}
	public Patient setBillingRate2HrRoc(double billingRate2HrRoc)throws Exception{
		if(!isSame(billingRate2HrRoc, getBillingRate2HrRoc())){
			double oldValue = getBillingRate2HrRoc();
			this.billingRate2HrRoc=billingRate2HrRoc;
			setProperty("BILLING_RATE_2HR_ROC", billingRate2HrRoc, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_FLAT",nullable=true)
	public double getBillingFlat(){
		return billingFlat;
	}
	public Patient setBillingFlat(double billingFlat)throws Exception{
		if(!isSame(billingFlat, getBillingFlat())){
			double oldValue = getBillingFlat();
			this.billingFlat=billingFlat;
			setProperty("BILLING_FLAT", billingFlat, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_FLAT_2HR_SOC",nullable=true)
	public double getBillingFlat2HrSoc(){
		return billingFlat2HrSoc;
	}
	public Patient setBillingFlat2HrSoc(double billingFlat2HrSoc)throws Exception{
		if(!isSame(billingFlat2HrSoc, getBillingFlat2HrSoc())){
			double oldValue = getBillingFlat2HrSoc();
			this.billingFlat2HrSoc=billingFlat2HrSoc;
			setProperty("BILLING_FLAT_2HR_SOC", billingFlat2HrSoc, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="BILLING_FLAT_2HR_ROC",nullable=true)
	public double getBillingFlat2HrRoc(){
		return billingFlat2HrRoc;
	}
	public Patient setBillingFlat2HrRoc(double billingFlat2HrRoc)throws Exception{
		if(!isSame(billingFlat2HrRoc, getBillingFlat2HrRoc())){
			double oldValue = getBillingFlat2HrRoc();
			this.billingFlat2HrRoc=billingFlat2HrRoc;
			setProperty("BILLING_FLAT_2HR_ROC", billingFlat2HrRoc, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="MILEAGE_RATE",nullable=true)
	public double getMileageRate(){
		return mileageRate;
	}
	public Patient setMileageRate(double mileageRate)throws Exception{
		if(!isSame(mileageRate, getMileageRate())){
			double oldValue = getMileageRate();
			this.mileageRate=mileageRate;
			setProperty("MILEAGE_RATE", mileageRate, oldValue);
		}
		return (Patient)this;
	}
	@Column(name="DESCRIPTION",nullable=true,length=256)
	public String getDescription(){
		return description;
	}
	public Patient setDescription(String description)throws Exception{
		if(!isSame(description, getDescription())){
			String oldValue = getDescription();
			this.description=description;
			setProperty("DESCRIPTION", description, oldValue);
		}
		return (Patient)this;
	}
	public GeneralData getDianosis(){
		if(dianosis==null)
			dianosis=GeneralData.getInstance(getDianosisId());
		return dianosis;
	}
	public Patient setDianosis(GeneralData dianosis)throws Exception{
		setDianosisId(dianosis==null?null:dianosis.getId());
		this.dianosis=dianosis;
		return (Patient)this;
	}
	public GeneralData getIVAccess(){
		if(iVAccess==null)
			iVAccess=GeneralData.getInstance(getIVAccessId());
		return iVAccess;
	}
	public Patient setIVAccess(GeneralData iVAccess)throws Exception{
		setIVAccessId(iVAccess==null?null:iVAccess.getId());
		this.iVAccess=iVAccess;
		return (Patient)this;
	}
	public GeneralData getReferralResolution(){
		if(referralResolution==null)
			referralResolution=GeneralData.getInstance(getReferralResolutionId());
		return referralResolution;
	}
	public Patient setReferralResolution(GeneralData referralResolution)throws Exception{
		setReferralResolutionId(referralResolution==null?null:referralResolution.getId());
		this.referralResolution=referralResolution;
		return (Patient)this;
	}
	public Vendor getReferralSource(){
		if(referralSource==null)
			referralSource=Vendor.getInstance(getReferralSourceId());
		return referralSource;
	}
	public Patient setReferralSource(Vendor referralSource)throws Exception{
		setReferralSourceId(referralSource==null?null:referralSource.getId());
		this.referralSource=referralSource;
		return (Patient)this;
	}
	public GeneralData getTherapyType(){
		if(therapyType==null)
			therapyType=GeneralData.getInstance(getTherapyTypeId());
		return therapyType;
	}
	public Patient setTherapyType(GeneralData therapyType)throws Exception{
		setTherapyTypeId(therapyType==null?null:therapyType.getId());
		this.therapyType=therapyType;
		return (Patient)this;
	}
	public Vendor getVendor(){
		if(vendor==null)
			vendor=Vendor.getInstance(getBillingId());
		return vendor;
	}
	public Patient setVendor(Vendor vendor)throws Exception{
		setBillingId(vendor==null?null:vendor.getId());
		this.vendor=vendor;
		return (Patient)this;
	}
	public List<Appointment> getAppointments(){
		if(isNewInstance() || appointments != null){
			if(appointments == null)
				appointments = new SortedList<Appointment>();
			return appointments;
		}
		return Appointment.getNamedCollection("findByPatient",getId());
	}
	public Patient addAppointment(Appointment appointment)throws Exception{
		appointment.setPatient((Patient)this);
		if(isNewInstance() || appointments != null)
			getAppointments().add(appointment);
		else
			appointment.insert();
		return (Patient)this;
	}
	public Patient removeAppointment(Appointment appointment)throws Exception{
		if(isNewInstance() || appointments != null)
			getAppointments().remove(appointment);
		else
			appointment.delete();
		return (Patient)this;
	}
	public Map<String,Object> getPropertyValues(){
		Hashtable<String,Object> values = new Hashtable<String,Object>();
		for(PROPERTY prop:PROPERTY.values()){
			Object value = getPropertyValue(prop);
			if(value!=null)
				values.put(""+prop,value);
		}
		return values;
	}
	public void setPropertyValues(Map<String,Object> data)throws Exception{
		for(String key:data.keySet())
			setPropertyValue(key,data.get(key).toString());
	}
	public Object getPropertyValue(String property){
		return getPropertyValue(PROPERTY.valueOf(formatProperty(property)));
	}
	public Object getPropertyValue(PROPERTY property){
		switch(property){
			case ID: return getId();
			case REFERRAL_DATE: return getReferralDate();
			case REFERRAL_SOURCE_ID: return getReferralSourceId();
			case NAME: return getName();
			case MR_NUM: return getMrNum();
			case DIANOSIS_ID: return getDianosisId();
			case THERAPY_TYPE_ID: return getTherapyTypeId();
			case I_V_ACCESS_ID: return getIVAccessId();
			case START_OF_CARE: return isStartOfCare();
			case START_OF_CARE_DATE: return getStartOfCareDate();
			case SERVICE_ADDRESS: return getServiceAddress();
			case LATITUDE: return getLatitude();
			case LONGITUDE: return getLongitude();
			case BILLING_ID: return getBillingId();
			case RX: return getRx();
			case EST_LAST_DAY_OF_SERVICE: return getEstLastDayOfService();
			case LABS: return isLabs();
			case LABS_FREQUENCY: return getLabsFrequency();
			case FIRST_RECERT_DUE: return getFirstRecertDue();
			case D_C_DATE: return getDCDate();
			case INFO_IN_S_O_S: return isInfoInSOS();
			case SCHEDULING_PREFERENCE: return getSchedulingPreference();
			case REFERRAL_NOTE: return getReferralNote();
			case REFERRAL_RESOLUTION_ID: return getReferralResolutionId();
			case REFERRAL_RESOLUTION_DATE: return getReferralResolutionDate();
			case REFERRAL_RESOLUTION_NOTE: return getReferralResolutionNote();
			case VENDOR_CONFIRMATION_DATE: return getVendorConfirmationDate();
			case NURSE_CONFIRMATION_DATE: return getNurseConfirmationDate();
			case PATIENT_CONFIRMATION_DATE: return getPatientConfirmationDate();
			case MEDS_DELIVERY_DATE: return getMedsDeliveryDate();
			case MEDS_CONFIRMATION_DATE: return getMedsConfirmationDate();
			case ACTIVE: return isActive();
			case BILLING_RATE: return getBillingRate();
			case BILLING_RATE_2HR_SOC: return getBillingRate2HrSoc();
			case BILLING_RATE_2HR_ROC: return getBillingRate2HrRoc();
			case BILLING_FLAT: return getBillingFlat();
			case BILLING_FLAT_2HR_SOC: return getBillingFlat2HrSoc();
			case BILLING_FLAT_2HR_ROC: return getBillingFlat2HrRoc();
			case MILEAGE_RATE: return getMileageRate();
			case DESCRIPTION: return getDescription();
		}
		return null;
	}
	public void setPropertyValue(String property, String value)throws Exception{
		if(property==null)return;
		setPropertyValue(PROPERTY.valueOf(formatProperty(property)),value);
	}
	public void setPropertyValue(PROPERTY property, String value)throws Exception{
		switch(property){
			case ID:setId(Integer.valueOf(value)); break;
			case REFERRAL_DATE:setReferralDate(FormatText.parseDate(value)); break;
			case REFERRAL_SOURCE_ID:setReferralSourceId(Integer.valueOf(value)); break;
			case NAME:setName(String.valueOf(value)); break;
			case MR_NUM:setMrNum(String.valueOf(value)); break;
			case DIANOSIS_ID:setDianosisId(Integer.valueOf(value)); break;
			case THERAPY_TYPE_ID:setTherapyTypeId(Integer.valueOf(value)); break;
			case I_V_ACCESS_ID:setIVAccessId(Integer.valueOf(value)); break;
			case START_OF_CARE:setStartOfCare(Boolean.valueOf(value)); break;
			case START_OF_CARE_DATE:setStartOfCareDate(FormatText.parseDate(value)); break;
			case SERVICE_ADDRESS:setServiceAddress(String.valueOf(value)); break;
			case LATITUDE:setLatitude(Double.valueOf(value)); break;
			case LONGITUDE:setLongitude(Double.valueOf(value)); break;
			case BILLING_ID:setBillingId(Integer.valueOf(value)); break;
			case RX:setRx(String.valueOf(value)); break;
			case EST_LAST_DAY_OF_SERVICE:setEstLastDayOfService(FormatText.parseDate(value)); break;
			case LABS:setLabs(Boolean.valueOf(value)); break;
			case LABS_FREQUENCY:setLabsFrequency(String.valueOf(value)); break;
			case FIRST_RECERT_DUE:setFirstRecertDue(FormatText.parseDate(value)); break;
			case D_C_DATE:setDCDate(String.valueOf(value)); break;
			case INFO_IN_S_O_S:setInfoInSOS(Boolean.valueOf(value)); break;
			case SCHEDULING_PREFERENCE:setSchedulingPreference(String.valueOf(value)); break;
			case REFERRAL_NOTE:setReferralNote(String.valueOf(value)); break;
			case REFERRAL_RESOLUTION_ID:setReferralResolutionId(Integer.valueOf(value)); break;
			case REFERRAL_RESOLUTION_DATE:setReferralResolutionDate(FormatText.parseDate(value)); break;
			case REFERRAL_RESOLUTION_NOTE:setReferralResolutionNote(String.valueOf(value)); break;
			case VENDOR_CONFIRMATION_DATE:setVendorConfirmationDate(FormatText.parseDate(value)); break;
			case NURSE_CONFIRMATION_DATE:setNurseConfirmationDate(FormatText.parseDate(value)); break;
			case PATIENT_CONFIRMATION_DATE:setPatientConfirmationDate(FormatText.parseDate(value)); break;
			case MEDS_DELIVERY_DATE:setMedsDeliveryDate(FormatText.parseDate(value)); break;
			case MEDS_CONFIRMATION_DATE:setMedsConfirmationDate(FormatText.parseDate(value)); break;
			case ACTIVE:setActive(Boolean.valueOf(value)); break;
			case BILLING_RATE:setBillingRate(Double.valueOf(value)); break;
			case BILLING_RATE_2HR_SOC:setBillingRate2HrSoc(Double.valueOf(value)); break;
			case BILLING_RATE_2HR_ROC:setBillingRate2HrRoc(Double.valueOf(value)); break;
			case BILLING_FLAT:setBillingFlat(Double.valueOf(value)); break;
			case BILLING_FLAT_2HR_SOC:setBillingFlat2HrSoc(Double.valueOf(value)); break;
			case BILLING_FLAT_2HR_ROC:setBillingFlat2HrRoc(Double.valueOf(value)); break;
			case MILEAGE_RATE:setMileageRate(Double.valueOf(value)); break;
			case DESCRIPTION:setDescription(String.valueOf(value)); break;
		}
	}
	public Patient copy()throws Exception{
		Patient cp = new Patient((Patient)this);
		copyChildrenTo(cp);
		return cp;
	}
	public void copyChildrenTo(PatientDAO cp)throws Exception{
		super.copyChildrenTo(cp);
		for(Appointment child:getAppointments())
			cp.addAppointment(child.copy());
	}
	public Vector<String> getDifference(PatientDAO o){
		Vector<String> diffs = super.getDifference(o);
		if(!isSame(getId(),o.getId())) diffs.add("ID");
		if(!isSame(getReferralDate(),o.getReferralDate())) diffs.add("REFERRAL_DATE");
		if(!isSame(getReferralSourceId(),o.getReferralSourceId())) diffs.add("REFERRAL_SOURCE_ID");
		if(!isSame(getName(),o.getName())) diffs.add("NAME");
		if(!isSame(getMrNum(),o.getMrNum())) diffs.add("MR_NUM");
		if(!isSame(getDianosisId(),o.getDianosisId())) diffs.add("DIANOSIS_ID");
		if(!isSame(getTherapyTypeId(),o.getTherapyTypeId())) diffs.add("THERAPY_TYPE_ID");
		if(!isSame(getIVAccessId(),o.getIVAccessId())) diffs.add("I_V_ACCESS_ID");
		if(!isSame(isStartOfCare(),o.isStartOfCare())) diffs.add("START_OF_CARE");
		if(!isSame(getStartOfCareDate(),o.getStartOfCareDate())) diffs.add("START_OF_CARE_DATE");
		if(!isSame(getServiceAddress(),o.getServiceAddress())) diffs.add("SERVICE_ADDRESS");
		if(!isSame(getLatitude(),o.getLatitude())) diffs.add("LATITUDE");
		if(!isSame(getLongitude(),o.getLongitude())) diffs.add("LONGITUDE");
		if(!isSame(getBillingId(),o.getBillingId())) diffs.add("BILLING_ID");
		if(!isSame(getRx(),o.getRx())) diffs.add("RX");
		if(!isSame(getEstLastDayOfService(),o.getEstLastDayOfService())) diffs.add("EST_LAST_DAY_OF_SERVICE");
		if(!isSame(isLabs(),o.isLabs())) diffs.add("LABS");
		if(!isSame(getLabsFrequency(),o.getLabsFrequency())) diffs.add("LABS_FREQUENCY");
		if(!isSame(getFirstRecertDue(),o.getFirstRecertDue())) diffs.add("FIRST_RECERT_DUE");
		if(!isSame(getDCDate(),o.getDCDate())) diffs.add("D_C_DATE");
		if(!isSame(isInfoInSOS(),o.isInfoInSOS())) diffs.add("INFO_IN_S_O_S");
		if(!isSame(getSchedulingPreference(),o.getSchedulingPreference())) diffs.add("SCHEDULING_PREFERENCE");
		if(!isSame(getReferralNote(),o.getReferralNote())) diffs.add("REFERRAL_NOTE");
		if(!isSame(getReferralResolutionId(),o.getReferralResolutionId())) diffs.add("REFERRAL_RESOLUTION_ID");
		if(!isSame(getReferralResolutionDate(),o.getReferralResolutionDate())) diffs.add("REFERRAL_RESOLUTION_DATE");
		if(!isSame(getReferralResolutionNote(),o.getReferralResolutionNote())) diffs.add("REFERRAL_RESOLUTION_NOTE");
		if(!isSame(getVendorConfirmationDate(),o.getVendorConfirmationDate())) diffs.add("VENDOR_CONFIRMATION_DATE");
		if(!isSame(getNurseConfirmationDate(),o.getNurseConfirmationDate())) diffs.add("NURSE_CONFIRMATION_DATE");
		if(!isSame(getPatientConfirmationDate(),o.getPatientConfirmationDate())) diffs.add("PATIENT_CONFIRMATION_DATE");
		if(!isSame(getMedsDeliveryDate(),o.getMedsDeliveryDate())) diffs.add("MEDS_DELIVERY_DATE");
		if(!isSame(getMedsConfirmationDate(),o.getMedsConfirmationDate())) diffs.add("MEDS_CONFIRMATION_DATE");
		if(!isSame(isActive(),o.isActive())) diffs.add("ACTIVE");
		if(!isSame(getBillingRate(),o.getBillingRate())) diffs.add("BILLING_RATE");
		if(!isSame(getBillingRate2HrSoc(),o.getBillingRate2HrSoc())) diffs.add("BILLING_RATE_2HR_SOC");
		if(!isSame(getBillingRate2HrRoc(),o.getBillingRate2HrRoc())) diffs.add("BILLING_RATE_2HR_ROC");
		if(!isSame(getBillingFlat(),o.getBillingFlat())) diffs.add("BILLING_FLAT");
		if(!isSame(getBillingFlat2HrSoc(),o.getBillingFlat2HrSoc())) diffs.add("BILLING_FLAT_2HR_SOC");
		if(!isSame(getBillingFlat2HrRoc(),o.getBillingFlat2HrRoc())) diffs.add("BILLING_FLAT_2HR_ROC");
		if(!isSame(getMileageRate(),o.getMileageRate())) diffs.add("MILEAGE_RATE");
		if(!isSame(getDescription(),o.getDescription())) diffs.add("DESCRIPTION");
		return diffs;
	}
	public void insertParents()throws Exception{
		if(vendor != null && vendor.isNewInstance())
				vendor.insert();
	}
	public void insertPreCheck()throws Exception{
		if (isNull(referralSourceId))
			 throw new Exception("REFERRAL_SOURCE_ID is required.");
		if (isNull(name))
			 throw new Exception("NAME is required.");
	}
	public void insertChildren()throws Exception{
		if(appointments != null){
			for(Appointment appointment:getAppointments())
				appointment.setPatient((Patient)this);
		}
		if(appointments != null){
			for(Appointment appointment:getAppointments())
				if(appointment.isNewInstance())
					appointment.insert();
			appointments = null;
		}
	}
}
