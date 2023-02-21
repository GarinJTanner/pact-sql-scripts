set @c="pact";
set @date_id=1;
select id, flag_status, email, current_login_ip, last_login_ip, 
replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(trim(trailing substring_index(email, '@', -1) from email),'@',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'0',''),'!',''),'#',''),'$',''),'%',''),'^',''),'&',''),'*',''),'(',''),')',''),'_',''),'+' ,''),',',''),'<',''),'.',''),'>',''),'/',''),'?',''),';',''),':',''),'"',''),'{','') ,']',''),'}','') 
as email_commonality from users

-- 1. email_commonality
where case when length(@c) <=2
	then email like concat(@c,'%') 
      or email like concat('%',@c) 
when length(@c)>=3 
  then email like concat(left(@c,0),'_',(substr(@c,2,24)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,1),'_',(substr(@c,3,23)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,2),'_',(substr(@c,4,22)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,3),'_',(substr(@c,5,21)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,4),'_',(substr(@c,6,20)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,5),'_',(substr(@c,7,19)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,6),'_',(substr(@c,8,18)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,7),'_',(substr(@c,9,17)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,8),'_',(substr(@c,10,16)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,9),'_',(substr(@c,11,15)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,10),'_',(substr(@c,12,14)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,11),'_',(substr(@c,13,13)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,12),'_',(substr(@c,14,12)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,13),'_',(substr(@c,15,11)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,14),'_',(substr(@c,16,10)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,15),'_',(substr(@c,17,9)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,16),'_',(substr(@c,18,8)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,17),'_',(substr(@c,19,7)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,18),'_',(substr(@c,20,6)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,19),'_',(substr(@c,21,5)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,20),'_',(substr(@c,22,4)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,21),'_',(substr(@c,23,3)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,22),'_',(substr(@c,24,2)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,23),'_',(substr(@c,25,1)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,24),'_','%') 
    
	or email like concat('%',left(@c,0),'_',(substr(@c,2,24))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,1),'_',(substr(@c,3,23))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,2),'_',(substr(@c,4,22))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,3),'_',(substr(@c,5,21))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,4),'_',(substr(@c,6,20))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,5),'_',(substr(@c,7,19))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,6),'_',(substr(@c,8,18))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,7),'_',(substr(@c,9,17))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,8),'_',(substr(@c,10,16))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,9),'_',(substr(@c,11,15))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,10),'_',(substr(@c,12,14))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,11),'_',(substr(@c,13,13))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,12),'_',(substr(@c,14,12))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,13),'_',(substr(@c,15,11))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,14),'_',(substr(@c,16,10))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,15),'_',(substr(@c,17,9))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,16),'_',(substr(@c,18,8))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,17),'_',(substr(@c,19,7))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,18),'_',(substr(@c,20,6))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,19),'_',(substr(@c,21,5))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,20),'_',(substr(@c,22,4))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,21),'_',(substr(@c,23,3))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,22),'_',(substr(@c,24,2))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,23),'_',(substr(@c,25,1))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,24),'_')     
    

    
-- 2. ec1    
when length(@c)
	  >=4
  then email like concat(left(@c,0),'__',(substr(@c,3,23)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,1),'__',(substr(@c,4,22)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,2),'__',(substr(@c,5,21)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,3),'__',(substr(@c,6,20)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,4),'__',(substr(@c,7,19)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,5),'__',(substr(@c,8,18)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,6),'__',(substr(@c,9,17)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,7),'__',(substr(@c,10,16)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,8),'__',(substr(@c,11,15)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,9),'__',(substr(@c,12,14)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,10),'__',(substr(@c,13,13)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,11),'__',(substr(@c,14,12)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,12),'__',(substr(@c,15,11)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,13),'__',(substr(@c,16,10)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,14),'__',(substr(@c,17,9)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,15),'__',(substr(@c,18,8)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,16),'__',(substr(@c,19,7)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,17),'__',(substr(@c,20,6)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,18),'__',(substr(@c,21,5)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,19),'__',(substr(@c,22,4)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,20),'__',(substr(@c,23,3)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,21),'__',(substr(@c,24,2)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,22),'__',(substr(@c,25,1)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,23),'__','%') 
    
	or email like concat('%',left(@c,0),'__',(substr(@c,3,23))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,1),'__',(substr(@c,4,22))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,2),'__',(substr(@c,5,21))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,3),'__',(substr(@c,6,20))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,4),'__',(substr(@c,7,19))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,5),'__',(substr(@c,8,18))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,6),'__',(substr(@c,9,17))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,7),'__',(substr(@c,10,16))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,8),'__',(substr(@c,11,15))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,9),'__',(substr(@c,12,14))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,10),'__',(substr(@c,13,13))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,11),'__',(substr(@c,14,12))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,12),'__',(substr(@c,15,11))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,13),'__',(substr(@c,16,10))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,14),'__',(substr(@c,17,9))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,15),'__',(substr(@c,18,8))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,16),'__',(substr(@c,19,7))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,17),'__',(substr(@c,20,6))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,18),'__',(substr(@c,21,5))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,19),'__',(substr(@c,22,4))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,20),'__',(substr(@c,23,3))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,21),'__',(substr(@c,24,2))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,22),'__',(substr(@c,25,1))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,23),'__')     
    
 
-- 3.  ec1   
    
when length(@c)>=6 
  then email like concat(left(@c,0),'___',(substr(@c,4,22)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,1),'___',(substr(@c,5,21)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,2),'___',(substr(@c,6,20)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,3),'___',(substr(@c,7,19)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,4),'___',(substr(@c,8,18)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,5),'___',(substr(@c,9,17)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,6),'___',(substr(@c,10,16)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,7),'___',(substr(@c,11,15)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,8),'___',(substr(@c,12,14)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,9),'___',(substr(@c,13,13)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,10),'___',(substr(@c,14,12)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,11),'___',(substr(@c,15,11)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,12),'___',(substr(@c,16,10)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,13),'___',(substr(@c,17,9)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,14),'___',(substr(@c,18,8)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,15),'___',(substr(@c,19,7)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,16),'___',(substr(@c,20,6)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,17),'___',(substr(@c,21,5)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,18),'___',(substr(@c,22,4)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,19),'___',(substr(@c,23,3)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,20),'___',(substr(@c,24,2)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,21),'___',(substr(@c,25,1)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,22),'___','%') 
    
	or email like concat('%',left(@c,0),'___',(substr(@c,4,22))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,1),'___',(substr(@c,5,21))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,2),'___',(substr(@c,6,20))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,3),'___',(substr(@c,7,19))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,4),'___',(substr(@c,8,18))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,5),'___',(substr(@c,9,17))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,6),'___',(substr(@c,10,16))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,7),'___',(substr(@c,11,15))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,8),'___',(substr(@c,12,14))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,9),'___',(substr(@c,13,13))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,10),'___',(substr(@c,14,12))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,11),'___',(substr(@c,15,11))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,12),'___',(substr(@c,16,10))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,13),'___',(substr(@c,17,9))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,14),'___',(substr(@c,18,8))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,15),'___',(substr(@c,19,7))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,16),'___',(substr(@c,20,6))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,17),'___',(substr(@c,21,5))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,18),'___',(substr(@c,22,4))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,19),'___',(substr(@c,23,3))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,20),'___',(substr(@c,24,2))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,21),'___',(substr(@c,25,1))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,22),'___') 
    
    
-- 4.  ec1
when length(@c)>=8 
  then email like concat(left(@c,0),'____',(substr(@c,5,21)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,1),'____',(substr(@c,6,20)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,2),'____',(substr(@c,7,19)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,3),'____',(substr(@c,8,18)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,4),'____',(substr(@c,9,17)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,5),'____',(substr(@c,10,16)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,6),'____',(substr(@c,11,15)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,7),'____',(substr(@c,12,14)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,8),'____',(substr(@c,13,13)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,9),'____',(substr(@c,14,12)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,10),'____',(substr(@c,15,11)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,11),'____',(substr(@c,16,10)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,12),'____',(substr(@c,17,9)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,13),'____',(substr(@c,18,8)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,14),'____',(substr(@c,19,7)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,15),'____',(substr(@c,20,6)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,16),'____',(substr(@c,21,5)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,17),'____',(substr(@c,22,4)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,18),'____',(substr(@c,23,3)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,19),'____',(substr(@c,24,2)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,20),'____',(substr(@c,25,1)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,21),'____','%') 
	
 	or email like concat('%',left(@c,0),'____',(substr(@c,5,21))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,1),'____',(substr(@c,6,20))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,2),'____',(substr(@c,7,19))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,3),'____',(substr(@c,8,18))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,4),'____',(substr(@c,9,17))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,5),'____',(substr(@c,10,16))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,6),'____',(substr(@c,11,15))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,7),'____',(substr(@c,12,14))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,8),'____',(substr(@c,13,13))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,9),'____',(substr(@c,14,12))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,10),'____',(substr(@c,15,11))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,11),'____',(substr(@c,16,10))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,12),'____',(substr(@c,17,9))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,13),'____',(substr(@c,18,8))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,14),'____',(substr(@c,19,7))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,15),'____',(substr(@c,20,6))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,16),'____',(substr(@c,21,5))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,17),'____',(substr(@c,22,4))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,18),'____',(substr(@c,23,3))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,19),'____',(substr(@c,24,2))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,20),'____',(substr(@c,25,1))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,21),'____') 


-- 5
when length(@c)>=10
 then email like concat(left(@c,0),'_____',(substr(@c,6,20)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,1),'_____',(substr(@c,7,19)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,2),'_____',(substr(@c,8,18)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,3),'_____',(substr(@c,9,17)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,4),'_____',(substr(@c,10,16)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,5),'_____',(substr(@c,11,15)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,6),'_____',(substr(@c,12,14)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,7),'_____',(substr(@c,13,13)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,8),'_____',(substr(@c,14,12)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,9),'_____',(substr(@c,15,11)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,10),'_____',(substr(@c,16,10)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,11),'_____',(substr(@c,17,9)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,12),'_____',(substr(@c,18,8)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,13),'_____',(substr(@c,19,7)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,14),'_____',(substr(@c,20,6)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,15),'_____',(substr(@c,21,5)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,16),'_____',(substr(@c,22,4)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,17),'_____',(substr(@c,23,3)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,18),'_____',(substr(@c,24,2)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,19),'_____',(substr(@c,25,1)),'%') and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat(left(@c,20),'_____','%') 
    
	or email like concat('%',left(@c,0),'_____',(substr(@c,6,20))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,1),'_____',(substr(@c,7,19))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,2),'_____',(substr(@c,8,18))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,3),'_____',(substr(@c,9,17))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,4),'_____',(substr(@c,10,16))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,5),'_____',(substr(@c,11,15))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,6),'_____',(substr(@c,12,14))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,7),'_____',(substr(@c,13,13))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,8),'_____',(substr(@c,14,12))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,9),'_____',(substr(@c,15,11))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,10),'_____',(substr(@c,16,10))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,11),'_____',(substr(@c,17,9))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,12),'_____',(substr(@c,18,8))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,13),'_____',(substr(@c,19,7))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,14),'_____',(substr(@c,20,6))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,15),'_____',(substr(@c,21,5))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,16),'_____',(substr(@c,22,4))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,17),'_____',(substr(@c,23,3))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,18),'_____',(substr(@c,24,2))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,19),'_____',(substr(@c,25,1))) and id in (select user_id from users_devices where device_id in (select id from devices where phone_model in ("%American Megatrends Inc%" or
"%Android Combo%" or  
"%Android SDK%" or
"%best buy%" or
"%Bignox%" or
"%BlueStacks%" or
"%Changed%" or
"%chromium%" or
"%custom phone%" or
"%Eblu.Berry%" or 
"%emu%" or 
"%Genymotion%" or 
"%iPhone Simulator%" or 
"%Meitu%" or 
"%Microsoft Windows 10%" or 
"%Microvirt%" or 
"%Parallels%" or 
"%Rockchip Android TV%" or 
"%SDK%" or 
"%VMware%")))
	or email like concat('%',left(@c,20),'_____')     
    


  else null end
   

group by id
order by email_commonality