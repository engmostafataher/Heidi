import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_button.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';

class ProfileBody
 extends StatelessWidget {
  const ProfileBody
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: const Text('الصفحه الشخصيه',style: TextStyle(fontSize: 22),)),
          const Text('',style: TextStyle(fontSize: 22),),
        ],),
        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.only(right: 20,),
          alignment: Alignment.centerRight,
          child: const Text('تغيير الاسم')),
        const CustomTextFiled(inputType: TextInputType.name, obscureText: false,
        hintText: 'مصطفي طاهر',
        ),

        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.only(right: 20,),
          alignment: Alignment.centerRight,
          child: const Text('رقم الهاتف')),
        const CustomTextFiled(inputType: TextInputType.name, obscureText: false,
        hintText: '٠١٠٩٩٥٧٩١٣٠',
        ),

        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.only(right: 20,),
          alignment: Alignment.centerRight,
          child: const Text('الرقم السري')),
        const CustomTextFiled(inputType: TextInputType.name, obscureText: false,
        hintText: 'ادخل الرقم السري',
        ),

        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.only(right: 20,),
          alignment: Alignment.centerRight,
          child: const Text('تأكيد الرقم السري')),
        const CustomTextFiled(inputType: TextInputType.name, obscureText: false,
        hintText: 'تأكيد الرقم السري',
        ),
        const SizedBox(height: 50,),
        const SizedBox(
          width: 200,
          child: CustomButton(text: 'تغيير',))
      ],
    );
  }
}