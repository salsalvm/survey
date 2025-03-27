import 'package:flutter/material.dart';

import 'colors.dart';

// this class is hold whole Gradient in the project
//its a static variable we can call anywhere with help of class name
class KGradient {
  static const Gradient kButton = LinearGradient(
    end: Alignment.bottomCenter,
    colors: <Color>[
      kPrimary,
      kSecondary,
    ],
  );
  static const Gradient kSuccesButton = LinearGradient(
    // end: Alignment.bottomCenter,

    colors: <Color>[
      Color.fromARGB(217, 21, 183, 43),
      Color.fromARGB(217, 9, 146, 28),
    ],
  );
  static const Gradient kErrorButton = LinearGradient(
    // end: Alignment.bottomCenter,

    colors: <Color>[
      Color.fromARGB(255, 237, 88, 78),
      kError,
    ],
  );
  static Gradient joinContestLive = LinearGradient(
    end: Alignment.bottomLeft,
    begin: Alignment.bottomRight,
    colors: <Color>[
      kTransparent,
      kError.withOpacity(.1),
      kError.withOpacity(.3),
      kError.withOpacity(.1),
      kTransparent
    ],
  );
  static Gradient joinContestInnings = LinearGradient(
    end: Alignment.bottomLeft,
    begin: Alignment.bottomRight,
    colors: <Color>[
      kTransparent,
      kPrimary.withOpacity(.1),
      kPrimary.withOpacity(.3),
      kPrimary.withOpacity(.1),
      kTransparent
    ],
  );
  static const Gradient kLiveTab = LinearGradient(
    end: Alignment.bottomRight,
    begin: Alignment.bottomCenter,
    colors: <Color>[
      kError,
      kOrange,
    ],
  );
  static const Gradient ktopPick = LinearGradient(
    colors: <Color>[
      kWarning,
      kOrange,
    ],
  );

  static Gradient joinContestBottom = LinearGradient(
    colors: <Color>[
      const Color.fromARGB(255, 151, 206, 246).withOpacity(.1),
      kWhite,
    ],
  );
  static Gradient bonusAmount = LinearGradient(
    end: Alignment.bottomCenter,
    colors: <Color>[
      const Color.fromARGB(255, 151, 206, 246).withOpacity(.6),
      const Color.fromARGB(255, 151, 206, 246).withOpacity(.2),
    ],
  );
  static const Gradient kDivider = LinearGradient(
    colors: <Color>[
      kTransparent,
      kMuted,
    ],
  );
  static const Gradient kInverterDivider = LinearGradient(
    colors: <Color>[
      kMuted,
      kTransparent,
    ],
  );

  static Gradient date = LinearGradient(
    colors: <Color>[
      kGrey.withOpacity(.3),
      kTransparent,
    ],
  );

  static Gradient lfSorting = LinearGradient(
    colors: <Color>[
      kError.withOpacity(.2),
      kWhite.withOpacity(.1),
    ],
  );
  static Gradient gameChangeColor = const LinearGradient(
    colors: <Color>[
      Color.fromRGBO(2, 31, 105, .7),
      kTransparent,
    ],
  );
  static Gradient gameChangeConfirmation = const LinearGradient(
    colors: <Color>[
      kTransparent,
      Color.fromRGBO(2, 31, 105, .5),
      kTransparent,
    ],
  );

  //golaba gradient function
  static LinearGradient gradientOpacity(Color color) {
    return LinearGradient(
      // end: Alignment.bottomCenter,

      colors: <Color>[
        color.withOpacity(.05),
        color.withOpacity(.2),
      ],
    );
  }

  //golaba gradient function
  static LinearGradient gradient(Color color) {
    return LinearGradient(
      // end: Alignment.bottomCenter,

      colors: <Color>[color.withOpacity(.8), color],
    );
  }

//text gradient
  static Shader textGradient = const LinearGradient(
    colors: <Color>[kPrimary, kSecondary],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );
}
