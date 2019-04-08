package com.nuc.admin.dao;

import java.util.List;
import com.nuc.admin.domain.Faci;

public interface IFaciDao {

	public abstract int addFaci(Faci faci);

	public abstract int delFaci(String faci_id);

	public abstract int delFacis(String[] faci_ids);

	public abstract int updateFaci(Faci faci);

	public abstract Faci getFaci(Faci faci);

	public abstract List<Faci>  listFacis(Faci faci);

	public abstract int listFacisCount(Faci faci);

}
