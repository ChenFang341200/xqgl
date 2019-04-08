package com.nuc.admin.dao;

import java.util.List;
import com.nuc.admin.domain.Room;

public interface IRoomDao {

	public abstract int addRoom(Room room);

	public abstract int delRoom(String room_id);

	public abstract int delRooms(String[] room_ids);

	public abstract int updateRoom(Room room);

	public abstract Room getRoom(Room room);

	public abstract List<Room>  listRooms(Room room);

	public abstract int listRoomsCount(Room room);

}
