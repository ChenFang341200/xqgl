package com.nuc.admin.dao;

import java.util.List;
import com.nuc.admin.domain.Wyfee;

public interface IWyfeeDao {

	public abstract int addWyfee(Wyfee wyfee);

	public abstract int delWyfee(String wyfee_id);

	public abstract int delWyfees(String[] wyfee_ids);

	public abstract int updateWyfee(Wyfee wyfee);

	public abstract Wyfee getWyfee(Wyfee wyfee);

	public abstract List<Wyfee>  listWyfees(Wyfee wyfee);

	public abstract int listWyfeesCount(Wyfee wyfee);

}
