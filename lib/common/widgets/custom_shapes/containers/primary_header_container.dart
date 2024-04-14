
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary1,
        padding: const EdgeInsets.only(bottom: 0),
        height: 400,
  
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 200,
                  left: -300,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
                  child,
            ],
          ),
        ),
    );
      
    
  }
}

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
