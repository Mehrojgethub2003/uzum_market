import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class Registrishin extends StatefulWidget {
  const Registrishin({super.key});

  @override
  State<Registrishin> createState() => _RegistrishinState();
}

class _RegistrishinState extends State<Registrishin> {
    TextEditingController _controller =
      TextEditingController(); // 
  @override
  Widget build(BuildContext context) {
    {
                              return SizedBox(
                                height: 870,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                  const SizedBox(
                                        height:
                                            15), // Boshidan ozgina bo'sh joy qoldirish
                    
                                    // "Kirish" matnini markazlashtirish
                                    Center(
                                      child: Text(
                                        "Kirish",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                    
                                    SizedBox(height: 30),
                    
                                    // "Telifon raqamingizni kiriting" matnini yuqoridan joylashtirish
                                   const Align(
                                      alignment: Alignment
                                          .topLeft, // Matnni chapga joylashtirish
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15), // Matnni chapga siljitish
                                        child: Text(
                                          "Telifon raqamingizni kiriting",
                                          style: TextStyle(
                                              fontSize: 25, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                   const SizedBox(height: 15),
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text(
                                          "Tastiqlash kodi ko'rsating SMS yuboramiz",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                    
                                    Container(
                                      //height: 40,
                                      width: m_w(context) * 0.9,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey.shade300,
                                      ),
                                      child: TextField(
                                        inputFormatters: [
                                          MaskTextInputFormatter(
                                            mask: "(##) ### ## ##",
                                          ),
                                        ],
                                        style: TextStyle(fontSize: 17),
                                        controller:
                                            _controller, // Default qiymatni ko'rsatish uchun controllerdan foydalanish
                                        keyboardType: TextInputType
                                            .number, // Raqamlarni kiritish uchun keyboard turi
                                        decoration: const InputDecoration(
                                            prefixIcon: SizedBox(
                                                width: 20,
                                                child: Center(
                                                    child: Text(
                                                  "+998",
                                                  style: TextStyle(fontSize: 17),
                                                ))), // Raqamni +998 bilan boshlash
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.only(top: 12)
                                            // Matnni maydonda joylashtirish
                                            ),
                                      ),
                                    ),
                    
                                    SizedBox(height: 20),
                    
                                    Container(
                                      height: 45,
                                      width: m_w(context) * 0.9,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.blue.shade700,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Kodni olish",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                      ),
                                    ),
                    
                                    SizedBox(height: 20),
                                  ],
                                ),
                              );
                            }
  }
}