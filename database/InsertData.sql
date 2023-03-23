use  HolaFood
------ Insert into Users ------------------------
INSERT INTO [dbo].[Users]
           ([username]
           ,[password]
           ,[name]
           ,[email]
           ,[phone_number]
           ,[address])
     VALUES
           
		   (N'moclong',	'123',N'Mộc Long Tân Xã','moclong@gmail.com','0988 948 583',N'Cổng Trường Hai Bà Trưng, Tân Xã, Thạch Thất, Hanoi, Vietnam'),
		   (N'crush','123',	N'Crush - Tea&Coffee','crush@gmail.com','097 195 81 85',N'2H92+RJ Tân Xã, Thạch Thất Hanoi, Vietnam 100000'),
		   (N'bamipho','123',N'Bánh mì phố','bamipho@gmail.com','0385 85 2696',N'Bánh mì Phố thôn 3 , cạnh trọ tuấn cường 2'),
		   (N'mixue','123',N'Mixue Tân Xã','	mixue@gmail.com','0931 311 296',N'Đầu đường 49 - Tân Xã - Thạch Thất - Hà Nội, Hanoi, Vietnam'),
		   (N'bamimo','123',N'Bamimo','bamimo@gmail.com','0975 486 919',N'Bánh mì Bamimo đối diện cây xăng 39'),
		   (N'comrangnguyenviet','123',N'Cơm Rang Nguyễn Việt','comrangnguyenviet@gmail.com','035 6721 667',N'Đối diên cây xăng 39, Thạch Hoà'),
		   (N'bundau1966','	123',N'Bún Đậu 1966','bundau1966@gmail.com','097 959 8680',N'QUÁN BÚN ĐẬU 1966, Tân Xã, Thạch Thất'),
		   (N'bundaucochang','123',N'Bún Đậu Cô Chang','bundaucochang@gmail.com','0866 823 822',N'Đối diện hồ câu Duy Minh, thôn 3, Thạch Hòa'),
		   (N'ngonquan','123',N'Ngon Quán','ngonquan@gmail.com','033 765 3888',N'SN 334 Đường 21, Thạch Hoà, Thạch Thất, Hà Nội 13113'),
		   (N'nemnuonghunganh','123',N'Nem Nướng Hùng Anh','nemnuonghunganh@gmail.com','034 243 6528',N'Đối diện cây xăng 39'),
		   (N'thai','123456',N'Duy Thái','dduythai.ddt@gmail.com','079 6428 094',N'Cốm Saximi, Thôn 9, Tân Xã, Thạch Thất, Hà Nội'),
		   (N'huong','123456',N'Trần Linh Hương','linhhuong@gmail.com','0353 240 623',N'Cốm Saximi, Thôn 9, Tân Xã, Thạch Thất, Hà Nội');
		   
------ Insert into MenuCategories ------------------------
INSERT INTO [dbo].[MenuCategories]
           ([name])
     VALUES
           (N'Cơm hộp'),
		   (N'Đồ ăn khác'),
		   (N'Đồ ăn vặt'),
		   (N'Đồ uống');

------ Insert into Restaurants ------------------------
INSERT INTO [dbo].[Restaurants]
           ([name]
           ,[description]
           ,[restaurant_image]
           ,[address]
           ,[phone_number]
           ,[owner_id])
     VALUES
           (N'Mộc Long Tân Xã',N'Đi đâu cũng được, miễn là có món ngon nhà #Mộc_Long bên cạnh là được phải không cả nhà ơiii? Menu hấp dẫn với nhiều món thức uống thơm ngon ngọt ngào tại Mộc Long đang đợi các bạn thưởng thức, cứ đang thèm nhất món gì thì nhanh chóng chọn món và order ngay nhé! Hãy để món ngon nhà Mộc long up mood cho bạn mỗi ngày nha!','MocLong.jpg',N'Cổng Trường Hai Bà Trưng, Tân Xã, Thạch Thất, Hanoi, Vietnam','0988 948 583','1'),
		   (N'Crush - Tea&Coffee',N'CRUSH TEA & COFFEE Chuyên phục vụ Trà sữa Đài Loan, Đồ ăn Hàn Quốc, Bún đậu mẹt, Nem lụi (nem nướng), bánh mì chảo - Bít tết - thiên đường ăn vặt, Trà hoa quả....','Crush.jpg',N'2H92+RJ Tân Xã, Thạch Thất Hanoi, Vietnam 100000','	097 195 81 85','2'),
		   (N'Bánh mì phố',N'Bán bánh, xôi các loại. Kèm đồ uống siêu ngon','BanhMiPho.jpg',N'Bánh mì Phố thôn 3, cạnh trọ tuấn cường 2','0385 85 2696 ','3'),
		   (N'Mixue Tân Xã',N'MIXUE là thương hiệu trà sữa có vốn đầu tư Hong Kong','MixueTanXa.jpg',N'Đầu đường 49 - Tân Xã - Thạch Thất - Hà Nội, Hanoi, Vietnam','	0931 311 296','4'),
		   (N'Bamimo',N'Bán bánh mì mỏ nhưng ăn như các tiệm khác nhưng đắt hơn','Bamimo.jpg',N'Bánh mì Bamimo đối diện cây xăng 39','0975 486 919','5'),
		   (N'Cơm Rang Nguyễn Việt',N'Cơm bình dân giá sinh viên…RMIT','ComRangNguyenViet.jpg',N'Đối diên cây xăng 39, Thạch Hoà','035 6721 667','6'),
		   (N'Bún Đậu 1966',N'BÚN ĐẬU 1966 ngon đúng hương vị quê','	BunDau1966.jpg',N'QUÁN BÚN ĐẬU 1966, Tân Xã, Thạch Thất','097 959 8680','7'),
		   (N'Bún Đậu Cô Chang',N'Đời cha ăn mặn. Đời con ăn bún đậu mắm tôm','BunDauCoChang.jpg',N'Đối diện hồ câu Duy Minh, thôn 3, Thạch Hòa','0866 823 822','8'),
		   (N'Ngon Quán',N'Cơm ngon cơm ngon các em ơi!!!! Mừng khai trương  => đến mùng 3/03 mua 1 tặng 1 đồ uống các em nhé','"NgonQuan.jpg',N'SN 334 Đường 21, Thạch Hoà, Thạch Thất, Hà Nội 13113','033 765 3888','9'),
		   (N'Nem Nướng Hùng Anh',N'Cmt cho quán học cách đeo găng tay trước khi nặn thịt mà quán inb đòi nổ địa chỉ','NemNuongHungAnh.jpg',N'Đối diện cây xăng 39','034 243 6528','10');

------ Insert into MenuItems ------------------------

INSERT INTO [dbo].[MenuItems]
           ([name]
           ,[description]
           ,[item_image]
           ,[price]
           ,[category_id]
           ,[restaurant_id])
     VALUES
           (N'Trà sữa cốm kem dừa nướng',N'Hương vị trà sữa ngọt ngào thơm thoang thoảng mùi cốm, kết hợp thêm lớp kem dừa béo ngậy cùng trân châu dai dai, tất cả hoà quyện tạo nên thức uống cực kỳ hấp dẫn khiến những ai thưởng thức cũng đều không thể quên được hương vị thơm ngon này! ','MocLong1.jpg','30000','4','1'),
		   (N'Nem nướng',N'Nem nướng siêu ngon','MocLong2.jpg','35000','2','1'),
		   (N'Bún trộn',N'Món signature của quán ','MocLong3.jpg','35000','2','1'),
		   (N'Xúc xích nướng',N'Món ngon ăn kèm khá hay','MocLong4.jpg','10000','3','1'),
		   (N'Bánh mì chảo',N'Món ăn đặc biệt của Crush Tea&Coffee','Crush1.jpg','35000','2','2'),
		   (N'Mì cay',N'Gồm rất nhiều topping như xúc xích, thịt bò, viên chiên, ngô','Crush2.jpg','45000','2','2'),
		   (N'Chè sầu',N'No Description','Crush3.jpg','30000','3','2'),
		   (N'Sữa tươi chân trâu đường đen',N'No Description','Crush4.jpg','35000','4','2'),
		   (N'Bánh bao gà nấm',N'No Description','BanhMiPho1.jpg','15000','2','3'),
		   (N'Bánh bao thập cẩm',N'No Description','BanhMiPho2.jpg','15000','2','3'),
		   (N'Xôi thập cẩm',N'No Description','BanhMiPho3.jpg','25000','1','3'),
		   (N'Sữa đậu nành',N'No Description','BanhMiPho4.jpg','10000','4','3'),
		   (N'Trà Cam Tươi',N'Thời tiết thất thường cũng không thể ngăn bạn thưởng thức một cốc Trà Cam Tươi chất lượng cao của Mixue được. Order liền để nạp năng lượng cuối ngày bạn nhé','MixueTanXa1.jpg','25000','4','4'),
		   (N'"Kem tươi',N'em tươi BIG SIZE giá 10K- Chỉ có thể là kem Mixue!','MixueTanXa2.jpg','10000','3','4'),
		   (N'Trà sữa Trân châu đường đen',N'Có hẹn đi xem Mai Đẹt-ti-ni thì cũng đừng quên ghé qua Mixue gặp Món nước quen Trà sữa Trân châu đường đen bạn nhé! Trà sữa Trân châu đường đen là món uống đã có từ lâu của Mixue. với phần topping siêu đầy đặn, tan chảy trong miệng. Đừng chọn đại, hãy chọn Mixue bạn nhé!','MixueTanXa3.jpg','25000','4','4'),
		   (N'Super Sundae, kem',N'Những cốc Sundae đầy up niềm vui và sự mát lạnh mà bạn đang cần mát lạnh đây, ai mua mát lạnh khônggg?','MixueTanXa4.jpg','25000','4','4'),
		   (N'Nước đậu',N'No Description','Bamimo1.jpg','10000','4','5'),
		   (N'Bánh mì bò sốt tiêu',N'No Description','Bamimo2.jpg','25000','2','5'),
		   (N'Bánh mì gà nướng',N'No Description','Bamimo3.jpg','25000','2','5'),
		   (N'Bánh mì đặc biệt',N'No Description','Bamimo4.jpg','20000','2','5'),
		   (N'Bánh mì nem gà',N'No Description','ComRangNguyenViet1.jpg','20000','2','6'),
		   (N'Cơm rang Sườn Chua Ngọt',N'No Description','ComRangNguyenViet2.jpg','30000','1','6'),
		   (N'Cơm rang thập cẩm',N'No Description','ComRangNguyenViet3.jpg','35000','1','6'),
		   (N'Cơm rang trứng xúc xích',N'No Description','ComRangNguyenViet4.jpg','30000','1','6'),
		   (N'Bún đậu thập cẩm ',N'No Description','BunDau19661.jpg','35000','2','7'),
		   (N'Bún đậu đặc biệt',N'No Description','BunDau19662.jpg','50000','2','7'),
		   (N'Nem nướng nha trang',N'No Description','BunDauCoChang1.jpg','35000','2','8'),
		   (N'Bún đậu mắm tôm',N'No Description','BunDauCoChang2.jpg','35000','2','8'),
		   (N'Cơm sườn nướng',N'No Description','NgonQuan1.jpg','35000','1','9'),
		   (N'Cơm bò bằm',N'No Description','NgonQuan1.jpg','40000','1','9'),
		   (N'Mỳ Ý Spaghetti',N'No Description','NgonQuan3.jpg','35000','2','9'),
		   (N'Nem nướng Nha Trang',N'No Description','NemNuongHungAnh1.jpg','30000','2','10'),
		   (N'Bún đậu mắm tôm',N'No Description','NemNuongHungAnh2.jpg','35000','2','10'),
		   (N'Bún chả Hà Nội',N'No Description','NemNuongHungAnh3.jpg','35000','2','10');

------ Insert into Orders ------------------------
INSERT INTO [dbo].[Orders]
           ([customer_id]
           ,[restaurant_id]
           ,[total_price]
           ,[status]
           ,[delivery_address]
           ,[delivery_time])
     VALUES
           ('1','1','50000',N'Đã giao hàng',N'Cốm Saximi, thôn 9, Tân Xã, Thạch Thất, Hà Nội','2022-10-30 07:30:00'),
		   ('3','2','60000',N'Đã giao hàng',N'Trọ Tuấn Cường, Thạch Hoà, Thạch Thất, Hà Nội','2022-11-29 09:30:00'),
		   ('3','3','45000',N'Đang chuẩn bị',N'Trọ Ông bà, Thạch Hoà, Thạch Thất ','2022-02-28 15:30:00'),
		   ('1','4','55000',N'Đang chuẩn bị',N'Cổng trường đại học FPT','2023-03-01 11:30:00'),
		   ('1','5','50000',N'Đang giao hàng',N'Thôn 4, Thạch Hoà, Thạch Thất','2023-03-02 13:30:00'),
		   ('3','6','50000',N'Đã giao hàng',N'Cốm Saximi, thôn 9, Tân Xã, Thạch Thất, Hà Nội','2023-03-11 13:30:00'),
		   ('3','7','70000',N'Đã giao hàng',N'Trọ Tuấn Cường, Thạch Hoà, Thạch Thất, Hà Nội','2023-03-03 13:30:00'),
		   ('1','8','65000',N'Đang chuẩn bị',N'Trọ Ông bà, Thạch Hoà, Thạch Thất ','2023-03-06 13:30:00'),
		   ('1','9','70000',N'Đang chuẩn bị',N'Cổng trường đại học FPT','2023-02-11 13:30:00'),
		   ('3','10','55000',N'Đang giao hàng',N'Thôn 4, Thạch Hoà, Thạch Thất','2023-03-18 13:30:00');

------ Insert into OrderItems ------------------------
INSERT INTO [dbo].[OrderItems]
           ([order_id]
           ,[menu_item_id]
           ,[quantity]
           ,[price])
     VALUES
           ('1','9','1','15000'),
		   ('1','27','1','35000'),
		   ('2','13','1','25000'),
		   ('2','31','1','35000'),
		   ('3','15','1','25000'),
		   ('3','20','1','20000'),
		   ('4','32','1','30000'),
		   ('4','15','1','25000'),
		   ('5','24','1','30000'),
		   ('5','20','1','20000'),
		   ('6','21','1','20000'),
		   ('6','1','1','30000'),
		   ('7','27','1','35000'),
		   ('7','29','1','35000'),
		   ('8','25','1','35000'),
		   ('8','32','1','30000'),
		   ('9','19','1','25000'),
		   ('9','6','1','45000'),
		   ('10','22','1','30000'),
		   ('10','18','1','25000');
