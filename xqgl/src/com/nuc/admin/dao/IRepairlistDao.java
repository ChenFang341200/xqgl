package com.nuc.admin.dao;

import java.util.List;
import com.nuc.admin.domain.Repairlist;

public interface IRepairlistDao {

	public abstract int addRepairlist(Repairlist repairlist);

	public abstract int delRepairlist(String repairlistid);

	public abstract int delRepairlists(String[] repairlistids);

	public abstract int updateRepairlist(Repairlist repairlist);

	public abstract Repairlist getRepairlist(Repairlist repairlist);

	public abstract List<Repairlist>  listRepairlists(Repairlist repairlist);

	public abstract int listRepairlistsCount(Repairlist repairlist);

}
