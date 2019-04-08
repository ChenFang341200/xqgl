package com.nuc.admin.manager;

import java.sql.SQLException;
import java.util.List;

import com.nuc.util.Md5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nuc.admin.dao.ICarDao;
import com.nuc.admin.dao.ICarfeeDao;
import com.nuc.admin.dao.IFaciDao;
import com.nuc.admin.dao.IRepairlistDao;
import com.nuc.admin.dao.IRoomDao;
import com.nuc.admin.dao.ISuggestDao;
import com.nuc.admin.dao.IUserDao;
import com.nuc.admin.dao.IWorkerDao;
import com.nuc.admin.dao.IWyfeeDao;
import com.nuc.admin.domain.Car;
import com.nuc.admin.domain.Carfee;
import com.nuc.admin.domain.Faci;
import com.nuc.admin.domain.Repairlist;
import com.nuc.admin.domain.Room;
import com.nuc.admin.domain.Suggest;
import com.nuc.admin.domain.User;
import com.nuc.admin.domain.Worker;
import com.nuc.admin.domain.Wyfee;

import com.soft.common.util.DateUtil;
import com.soft.common.util.StringUtil;

@Service
public class AdminManager {
	@Autowired
	ICarDao carDao;
	@Autowired
	ICarfeeDao carfeeDao;
	@Autowired
	IFaciDao faciDao;
	@Autowired
	IRepairlistDao repairlistDao;
	@Autowired
	IRoomDao roomDao;
	@Autowired
	IUserDao userDao;
	@Autowired
	ISuggestDao suggestDao;
	@Autowired
	IWorkerDao workerDao;
	@Autowired
	IWyfeeDao wyfeeDao;


	/**
	 * @param user
	 * @return List<User>
	 * @Title: listUsers
	 * @Description: 用户查询
	 */
	public List<User> listUsers(User user, int[] sum) {

		if (sum != null) {
			sum[0] = userDao.listUsersCount(user);
		}
		List<User> users = userDao.listUsers(user);


		return users;
	}


	/**
	 * @param user
	 * @return User
	 * @Title: queryUser
	 * @Description: 用户查询
	 */
	public User queryUser(User user) {

		User _user = userDao.getUser(user);

		return _user;
	}

	/**
	 * @param user
	 * @return void
	 * @Title: addUser
	 * @Description: 添加用户
	 */
	public void addUser(User user) {
		if (!StringUtil.isEmptyString(user.getUser_pass())) {

		}
	}

		/**
		 * @Title: addUserBatch
		 * @Description: 添加用户
		 * @param List<Score>
		 * @return void
		 * @throws SQLException
		 */

	public void addUserBatch(List <User> users) {
		for (int i = 0; i < users.size(); i++) {
			userDao.addUser(users.get(i));
		}
	}

	/**
	 * @Title: updateUser
	 * @Description: 更新用户信息
	 * @param user
	 * @return void
	 */

		public void updateUser(User paramsUser) {
			if (!StringUtil.isEmptyString(paramsUser.getUser_pass())) {
				paramsUser.setUser_pass(Md5.makeMd5(paramsUser.getUser_pass()));
			}
			userDao.updateUser(paramsUser);
		}



	/**
	 * @Title: delUsers
	 * @Description: 删除用户信息
	 * @param user
	 * @return void
	 */
	public void delUsers(User user) {

		userDao.delUsers(user.getIds().split(","));

	}

	/**
	 * @Title: listRooms
	 * @Description: 房屋查询
	 * @param room
	 * @return List<Room>
	 */
	public List<Room> listRooms(Room room, int[] sum) {

		if (sum != null) {
			sum[0] = roomDao.listRoomsCount(room);
		}
		List<Room> rooms = roomDao.listRooms(room);


		return rooms;
	}

	/**
	 * @Title: queryRoom
	 * @Description: 房屋查询
	 * @param room
	 * @return Room
	 */
	public Room queryRoom(Room room) {

		Room _room = roomDao.getRoom(room);

		return _room;
	}

	/**
	 * @Title: addRoom
	 * @Description: 添加房屋
	 * @param room
	 * @return void
	 */
	public void addRoom(Room room) {

		roomDao.addRoom(room);

	}

	/**
	 * @Title: updateRoom
	 * @Description: 更新房屋信息
	 * @param room
	 * @return void
	 */
	public void updateRoom(Room room) {

		roomDao.updateRoom(room);

	}

	/**
	 * @Title: delRooms
	 * @Description: 删除房屋信息
	 * @param room
	 * @return void
	 */
	public void delRooms(Room room) {

		roomDao.delRooms(room.getIds().split(","));

	}

	/**
	 * @Title: listCars
	 * @Description: 车位集合查询
	 * @param car
	 * @return List<Car>
	 */
	public List<Car> listCars(Car car, int[] sum) {

		if (sum != null) {
			sum[0] = carDao.listCarsCount(car);
		}
		List<Car> cars = carDao.listCars(car);


		return cars;
	}


	/**
	 * @Title: queryCar
	 * @Description: 车位查询
	 * @param car
	 * @return Car
	 */
	public Car queryCar(Car car) {

		Car _car = carDao.getCar(car);

		return _car;
	}

	/**
	 * @Title: addCar
	 * @Description: 添加车位
	 * @param car
	 * @return void
	 */
	public void addCar(Car car) {
		carDao.addCar(car);
	}

	/**
	 * @Title: updateCar
	 * @Description: 更新车位
	 * @param car
	 * @return void
	 */
	public void updateCar(Car car) {

		carDao.updateCar(car);

	}

	/**
	 * @Title: delCars
	 * @Description: 删除车位
	 * @param car
	 * @return void
	 */
	public void delCars(Car car) {

		carDao.delCars(car.getIds().split(","));

	}

	/**
	 * @Title: listFacis
	 * @Description: 公共设施信息集合查询
	 * @param faci
	 * @return List<Faci>
	 */
	public List<Faci> listFacis(Faci faci, int[] sum) {

		if (sum != null) {
			sum[0] = faciDao.listFacisCount(faci);
		}
		List<Faci> facis = faciDao.listFacis(faci);


		return facis;
	}


	/**
	 * @Title: queryFaci
	 * @Description: 公共设施信息查询
	 * @param faci
	 * @return Faci
	 */
	public Faci queryFaci(Faci faci) {

		Faci _faci = faciDao.getFaci(faci);

		return _faci;
	}

	/**
	 * @Title: addFaci
	 * @Description: 添加公共设施信息
	 * @param faci
	 * @return void
	 */
	public void addFaci(Faci faci) {
		faciDao.addFaci(faci);
	}

	/**
	 * @Title: updateFaci
	 * @Description: 更新公共设施信息
	 * @param faci
	 * @return void
	 */
	public void updateFaci(Faci faci) {

		faciDao.updateFaci(faci);

	}

	/**
	 * @Title: delFacis
	 * @Description: 删除公共设施信息
	 * @param faci
	 * @return void
	 */
	public void delFacis(Faci faci) {

		faciDao.delFacis(faci.getIds().split(","));

	}


	/**
	 * @Title: listWyfees
	 * @Description: 物业缴费信息集合查询
	 * @param wyfee
	 * @return List<Wyfee>
	 */
	public List<Wyfee> listWyfees(Wyfee wyfee, int[] sum) {

		if (sum != null) {
			sum[0] = wyfeeDao.listWyfeesCount(wyfee);
		}
		List<Wyfee> wyfees = wyfeeDao.listWyfees(wyfee);


		return wyfees;
	}


	/**
	 * @Title: queryWyfee
	 * @Description: 物业缴费信息查询
	 * @param wyfee
	 * @return Wyfee
	 */
	public Wyfee queryWyfee(Wyfee wyfee) {

		Wyfee _wyfee = wyfeeDao.getWyfee(wyfee);

		return _wyfee;
	}

	/**
	 * @Title: addWyfee
	 * @Description: 添加物业缴费信息
	 * @param wyfee
	 * @return void
	 */
	public void addWyfee(Wyfee wyfee) {
		wyfeeDao.addWyfee(wyfee);
	}

	/**
	 * @Title: updateWyfee
	 * @Description: 更新物业缴费信息
	 * @param wyfee
	 * @return void
	 */
	public void updateWyfee(Wyfee wyfee) {

		wyfeeDao.updateWyfee(wyfee);

	}

	/**
	 * @Title: delWyfees
	 * @Description: 删除物业缴费信息
	 * @param wyfee
	 * @return void
	 */
	public void delWyfees(Wyfee wyfee) {

		wyfeeDao.delWyfees(wyfee.getIds().split(","));

	}

	/**
	 * @Title: listCarfees
	 * @Description: 车位缴费信息集合查询
	 * @param carfee
	 * @return List<Carfee>
	 */
	public List<Carfee> listCarfees(Carfee carfee, int[] sum) {

		if (sum != null) {
			sum[0] = carfeeDao.listCarfeesCount(carfee);
		}
		List<Carfee> carfees = carfeeDao.listCarfees(carfee);


		return carfees;
	}


	/**
	 * @Title: queryCarfee
	 * @Description: 车位缴费信息查询
	 * @param carfee
	 * @return Carfee
	 */
	public Carfee queryCarfee(Carfee carfee) {

		Carfee _carfee = carfeeDao.getCarfee(carfee);

		return _carfee;
	}

	/**
	 * @Title: addCarfee
	 * @Description: 添加车位缴费信息
	 * @param carfee
	 * @return void
	 */
	public void addCarfee(Carfee carfee) {
		carfeeDao.addCarfee(carfee);
	}

	/**
	 * @Title: updateCarfee
	 * @Description: 更新车位缴费信息
	 * @param carfee
	 * @return void
	 */
	public void updateCarfee(Carfee carfee) {

		carfeeDao.updateCarfee(carfee);

	}

	/**
	 * @Title: delCarfees
	 * @Description: 删除车位缴费信息
	 * @param carfee
	 * @return void
	 */
	public void delCarfees(Carfee carfee) {

		carfeeDao.delCarfees(carfee.getIds().split(","));

	}

	/**
	 * @Title: listWorkers
	 * @Description: 员工信息集合查询
	 * @param worker
	 * @return List<Worker>
	 */
	public List<Worker> listWorkers(Worker worker, int[] sum) {

		if (sum != null) {
			sum[0] = workerDao.listWorkersCount(worker);
		}
		List<Worker> workers = workerDao.listWorkers(worker);


		return workers;
	}


	/**
	 * @Title: queryWorker
	 * @Description: 员工信息查询
	 * @param worker
	 * @return Worker
	 */
	public Worker queryWorker(Worker worker) {

		Worker _worker = workerDao.getWorker(worker);

		return _worker;
	}

	/**
	 * @Title: addWorker
	 * @Description: 添加员工信息
	 * @param worker
	 * @return void
	 */
	public void addWorker(Worker worker) {
		workerDao.addWorker(worker);
	}

	/**
	 * @Title: updateWorker
	 * @Description: 更新员工信息
	 * @param worker
	 * @return void
	 */
	public void updateWorker(Worker worker) {

		workerDao.updateWorker(worker);

	}

	/**
	 * @Title: delWorkers
	 * @Description: 删除员工信息
	 * @param worker
	 * @return void
	 */
	public void delWorkers(Worker worker) {

		workerDao.delWorkers(worker.getIds().split(","));

	}

	/**
	 * @Title: listRepairlists
	 * @Description: 报修查询
	 * @param repairlist
	 * @return List<Repairlist>
	 */
	public List<Repairlist> listRepairlists(Repairlist repairlist, int[] sum) {

		if (sum != null) {
			sum[0] = repairlistDao.listRepairlistsCount(repairlist);
		}
		List<Repairlist> repairlists = repairlistDao.listRepairlists(repairlist);


		return repairlists;
	}

	/**
	 * @Title: queryRepairlist
	 * @Description: 报修查询
	 * @param repairlist
	 * @return Repairlist
	 */
	public Repairlist queryRepairlist(Repairlist repairlist) {

		Repairlist _repairlist = repairlistDao.getRepairlist(repairlist);

		return _repairlist;
	}

	/**
	 * @Title: addRepairlist
	 * @Description: 添加报修
	 * @param repairlist
	 * @return void
	 */
	public void addRepairlist(Repairlist repairlist) {
		//提交时间
		repairlist.setRepairtime(DateUtil.getCurDateTime());
		repairlistDao.addRepairlist(repairlist);

	}

	/**
	 * @Title: updateRepairlist
	 * @Description: 更新报修信息
	 * @param repairlist
	 * @return void
	 */
	public void updateRepairlist(Repairlist repairlist) {
		repairlistDao.updateRepairlist(repairlist);

	}

	/**
	 * @Title: delRepairlists
	 * @Description: 删除报修信息
	 * @param repairlist
	 * @return void
	 */
	public void delRepairlists(Repairlist repairlist) {

		repairlistDao.delRepairlists(repairlist.getIds().split(","));

	}


	/**
	 * @Title: listSuggests
	 * @Description: 报修查询
	 * @param suggest
	 * @return List<Suggest>
	 */
	public List<Suggest> listSuggests(Suggest suggest, int[] sum) {

		if (sum != null) {
			sum[0] = suggestDao.listSuggestsCount(suggest);
		}
		List<Suggest> suggests = suggestDao.listSuggests(suggest);


		return suggests;
	}

	/**
	 * @Title: querySuggest
	 * @Description: 报修查询
	 * @param suggest
	 * @return Suggest
	 */
	public Suggest querySuggest(Suggest suggest) {

		Suggest _suggest = suggestDao.getSuggest(suggest);

		return _suggest;
	}

	/**
	 * @Title: addSuggest
	 * @Description: 添加报修
	 * @param suggest
	 * @return void
	 */
	public void addSuggest(Suggest suggest) {
		//提交时间
		suggest.setSuggesttime(DateUtil.getCurDateTime());
		suggestDao.addSuggest(suggest);

	}

	/**
	 * @Title: updateSuggest
	 * @Description: 更新意见建议
	 * @param suggest
	 * @return void
	 */
	public void updateSuggest(Suggest suggest) {
		suggest.setReplytime(DateUtil.getCurDateTime());
		suggestDao.updateSuggest(suggest);

	}

	/**
	 * @Title: delSuggests
	 * @Description: 删除意见建议
	 * @param suggest
	 * @return void
	 */
	public void delSuggests(Suggest suggest) {

		suggestDao.delSuggests(suggest.getIds().split(","));

	}

	public ICarDao getCarDao() {
		return carDao;
	}


	public ICarfeeDao getCarfeeDao() {
		return carfeeDao;
	}


	public IFaciDao getFaciDao() {
		return faciDao;
	}


	public IRepairlistDao getRepairlistDao() {
		return repairlistDao;
	}


	public IRoomDao getRoomDao() {
		return roomDao;
	}


	public IUserDao getUserDao() {
		return userDao;
	}


	public ISuggestDao getSuggestDao() {
		return suggestDao;
	}


	public IWorkerDao getWorkerDao() {
		return workerDao;
	}


	public IWyfeeDao getWyfeeDao() {
		return wyfeeDao;
	}


	public void setCarDao(ICarDao carDao) {
		this.carDao = carDao;
	}


	public void setCarfeeDao(ICarfeeDao carfeeDao) {
		this.carfeeDao = carfeeDao;
	}


	public void setFaciDao(IFaciDao faciDao) {
		this.faciDao = faciDao;
	}


	public void setRepairlistDao(IRepairlistDao repairlistDao) {
		this.repairlistDao = repairlistDao;
	}


	public void setRoomDao(IRoomDao roomDao) {
		this.roomDao = roomDao;
	}


	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}


	public void setSuggestDao(ISuggestDao suggestDao) {
		this.suggestDao = suggestDao;
	}


	public void setWorkerDao(IWorkerDao workerDao) {
		this.workerDao = workerDao;
	}


	public void setWyfeeDao(IWyfeeDao wyfeeDao) {
		this.wyfeeDao = wyfeeDao;
	}




}