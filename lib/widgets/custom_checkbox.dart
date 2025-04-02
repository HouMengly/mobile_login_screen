import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;
  final bool hasLink;
  final VoidCallback? onLinkTap;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.hasLink = false,
    this.onLinkTap,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: widget.value,
            onChanged: widget.onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(AppBorderRadius.sm), // Fixed here
            ),
            activeColor: AppColors.primary,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.label,
                  style: AppTextStyles.bodyText,
                ),
                if (widget.hasLink)
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: widget.onLinkTap,
                      child: Text(
                        ' Terms & Conditions',
                        style: AppTextStyles.bodyText.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
