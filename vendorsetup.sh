for i in eng userdebug user; do
    add_lunch_combo cm_u8510-${i}
done

if [ "$TARGET_PRODUCT" == "cm_u8510" ]
then
    sh device/huawei/msm7x27-common/patches/apply.sh
    sh device/huawei/u8510/patches/apply.sh
fi
