import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/screens/getaways/widgets/main-text-field.dart';

const String svgString = '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<g opacity="0.2">
<path d="M6.66675 1.66666V4.16666" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.3333 1.66666V4.16666" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.5 7.08333V11.3583C16.7583 10.7667 15.8167 10.4167 14.7917 10.4167C13.7667 10.4167 12.8083 10.775 12.0583 11.3833C11.05 12.175 10.4167 13.4167 10.4167 14.7917C10.4167 15.6083 10.65 16.3917 11.05 17.0417C11.3583 17.55 11.7583 17.9917 12.2333 18.3333H6.66667C3.75 18.3333 2.5 16.6667 2.5 14.1667V7.08333C2.5 4.58333 3.75 2.91666 6.66667 2.91666H13.3333C16.25 2.91666 17.5 4.58333 17.5 7.08333Z" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.83325 9.16666H10.8333" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.83325 13.3333H8.01658" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19.1667 14.7917C19.1667 15.6083 18.9334 16.3917 18.5334 17.0417C18.3001 17.4417 18.0084 17.7917 17.6668 18.075C16.9001 18.7583 15.9001 19.1667 14.7917 19.1667C13.8334 19.1667 12.9501 18.8583 12.2334 18.3333C11.7584 17.9917 11.3584 17.55 11.0501 17.0417C10.6501 16.3917 10.4167 15.6083 10.4167 14.7917C10.4167 13.4167 11.0501 12.175 12.0584 11.3833C12.8084 10.775 13.7667 10.4167 14.7917 10.4167C15.8167 10.4167 16.7584 10.7667 17.5001 11.3583C18.5167 12.1583 19.1667 13.4 19.1667 14.7917Z" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.7916 16.875C14.7916 15.725 15.7249 14.7917 16.8749 14.7917C15.7249 14.7917 14.7916 13.8583 14.7916 12.7083C14.7916 13.8583 13.8583 14.7917 12.7083 14.7917C13.8583 14.7917 14.7916 15.725 14.7916 16.875Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</svg>

''';

const String profileAddSvg = '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<g opacity="0.2">
<path d="M15.4167 16.25H12.0834" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.75 17.9167V14.5833" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10.1333 9.05833C10.05 9.05 9.94996 9.05 9.85829 9.05833C7.87496 8.99166 6.29996 7.36666 6.29996 5.36666C6.29162 3.325 7.94996 1.66666 9.99162 1.66666C12.0333 1.66666 13.6916 3.325 13.6916 5.36666C13.6916 7.36666 12.1083 8.99166 10.1333 9.05833Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.9917 18.175C8.47503 18.175 6.9667 17.7917 5.8167 17.025C3.80003 15.675 3.80003 13.475 5.8167 12.1333C8.10837 10.6 11.8667 10.6 14.1584 12.1333" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</svg>
''';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff16202F),
          border: Border.all(width: 1, color: const Color(0xff39414E)),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              const CustomTextField(),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.string(
                          svgString,
                          width: 20,
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text('from',
                              style: TextStyle(
                                  color: Color(0xff39414E), fontSize: 16)),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              thickness: 1,
                              color: Color(0xff39414E),
                              width: 1,
                            )),
                        const Spacer(),
                        SvgPicture.string(
                          svgString,
                          width: 20,
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text('to',
                              style: TextStyle(
                                  color: Color(0xff39414E), fontSize: 16)),
                        ),
                        const Spacer(),
                        const SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              thickness: 1,
                              color: Color(0xff39414E),
                              width: 1,
                            ))
                      ],
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.string(
                          profileAddSvg,
                          width: 20,
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text('count',
                              style: TextStyle(
                                  color: Color(0xff39414E), fontSize: 16)),
                        )
                      ],
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
