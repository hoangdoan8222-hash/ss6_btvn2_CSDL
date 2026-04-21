/*
	1. Phân tích lỗi: Lỗi ONLY_FULL_GROUP_BY xảy ra vì bạn cố tình nhét cột room_name vào mà không nhóm nó. Một khách sạn có nhiều loại phòng
    với các tên khác nhau, SQL không thể biết cái tên nào đi kèm với mức giá thấp nhất đó nếu không có logic phụ
*/

-- Cách sửa: chấp nhận ẩn tên phòng
SELECT hotel_id, MIN(price_per_night) 
FROM Rooms 
GROUP BY hotel_id;