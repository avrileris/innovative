package com.digitald4.iis.model;

import com.digitald4.common.model.GeneralData;

public enum GenData {
	UserType(null, 1), 
	UserType_Admin(UserType, 1),
	UserType_Standard(UserType, 2),
	ASS_CAT(null, 2),
	ASS_CAT_VITAL(ASS_CAT, 1),
	DIANOSIS(null, 3),
	THERAPY_TYPE(null, 4),
	IV_ACCESS(null, 5),
	PATIENT_STATE(null, 8),
	PATIENT_PENDING(PATIENT_STATE, 1),
	PATIENT_ACTIVE(PATIENT_STATE, 2),
	PATIENT_DENIED(PATIENT_STATE, 3),
	PATIENT_CLOSED(PATIENT_STATE, 4), 
	LICENSE(null,9),
	;
	
	private GenData group;
	private Integer inGroupId;
	private GeneralData instance;

	private GenData(GenData group, Integer inGroupId) {
		this.group = group;
		this.inGroupId = inGroupId;
	}
	
	public Integer getInGroupId() {
		return inGroupId;
	}
	
	public GeneralData get() throws Exception {
		if (instance == null) {
			instance = GeneralData.getInstance(group == null ? null : group.get(), inGroupId);
			if (instance == null) {
				System.err.println("Missing General Data: " + this + " inserting...");
				instance = new GeneralData().setName(""+this).setDescription(""+this).setGroup(group != null ? group.get() : null).setInGroupId(getInGroupId());
				instance.save();
			}
		}
		return instance;
	}
}
