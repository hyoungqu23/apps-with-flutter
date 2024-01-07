import 'package:apps_with_flutter/src/features/wallet_app/views/widgets/button.dart';
import 'package:apps_with_flutter/src/features/wallet_app/views/widgets/card.dart';
import 'package:flutter/material.dart';

class StockAppScreen extends StatelessWidget {
  const StockAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Hyoungmin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$5 194 382',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StockAppButton(
                  text: 'Transfer',
                  color: Colors.black,
                  backgroundColor: Color(0xFFF2B33A),
                ),
                StockAppButton(
                  text: 'Request',
                  color: Colors.white,
                  backgroundColor: Color(0xFF1F2123),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const StockAppCard(
              text: 'Euro',
              amount: '6 428',
              unit: 'EUR',
              icon: Icons.euro_rounded,
              order: 0,
            ),
            const StockAppCard(
              text: 'Dollar',
              amount: '55 622',
              unit: 'USD',
              icon: Icons.attach_money_rounded,
              isInverted: true,
              order: 1,
            ),
            const StockAppCard(
              text: 'Rupee',
              amount: '28 981',
              unit: 'INR',
              icon: Icons.currency_rupee_rounded,
              order: 2,
            ),
          ],
        ),
      ),
    );
  }
}
