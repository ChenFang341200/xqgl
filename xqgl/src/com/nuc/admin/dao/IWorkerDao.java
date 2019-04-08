package com.nuc.admin.dao;

import java.util.List;
import com.nuc.admin.domain.Worker;

public interface IWorkerDao {

	public abstract int addWorker(Worker worker);

	public abstract int delWorker(String worker_id);

	public abstract int delWorkers(String[] worker_ids);

	public abstract int updateWorker(Worker worker);

	public abstract Worker getWorker(Worker worker);

	public abstract List<Worker>  listWorkers(Worker worker);

	public abstract int listWorkersCount(Worker worker);

}
