 package DAO;

import java.util.ArrayList;

import model.Room;

public class RoomDAO implements DAOInterface<Room>{
	private ArrayList<Room> data = new ArrayList<Room>();
	@Override
	public ArrayList<Room> selectAll() {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Room selectById(String id) {
		Room test = new Room();
		test.setRoomID(id);
		for(Room x : data) {
			if(x.equals(test)) {
				return x;
			}
		}
		return null;
	}

	@Override
	public boolean insert(Room room) {
		Room check = this.selectById(room.getRoomID());
		if(check == null) {
			data.add(room);
			return true;
		}else {
			return false;
		}
	}

	@Override
	public int insertAll(ArrayList<Room> list) {
		int count = 0;
		for(Room check : list) {
			if(this.insert(check)) {
				count++;
			}
		}
		return count;
	}

	@Override
	public boolean delete(Room room) {
		Room check = this.selectById(room.getRoomID());
		if(check == null) {
			return false;
		}else {
			data.remove(room);
			return true;
		}
	}

	@Override
	public int deleteAll(ArrayList<Room> list) {
		int count = 0;
		for(Room check : list) {
			if(this.delete(check)) {
				count++;
			}
		}
		return count;
	}

	@Override
	public boolean update(Room room) {
		for(Room x : data) {
			if(x.getRoomID() == room.getRoomID()) {
				x.setRoomName(room.getRoomName());
				x.setRoomAmount(room.getRoomAmount());
				x.setRoomPrice(room.getRoomPrice());
				x.setRoomStatus(room.getRoomStatus());
				x.setRoomType(room.getRoomType());
				return true;
			}
		}
		return false;
	}
	
}
