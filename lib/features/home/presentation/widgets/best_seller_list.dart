import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:bookie_app/features/home/data/model/best_seller_response/product.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key, required this.products});
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Best Seller', style: TextStyles.getHeadLine2()),
          Skeletonizer(
            enabled: products.isEmpty,
            containersColor: AppColors.borderColor,
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.isEmpty ? 4 : products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    products[index].image ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  
}
