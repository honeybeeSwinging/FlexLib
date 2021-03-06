/**
 * Copyright (c) 2017-present, zhenglibao, Inc.
 * email: 798393829@qq.com
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#import "UIToolbar+Flex.h"
#import "UIView+Flex.h"
#import <objc/runtime.h>
#import "../FlexUtils.h"

static NameValue _gStyle[] =
{
    {"default",UIBarStyleDefault},
    {"black",UIBarStyleBlack},
    {"opaque",UIBarStyleBlackOpaque},
    {"translucent",UIBarStyleBlackTranslucent},
};

@implementation UIToolbar (Flex)

FLEXSET(barStyle)
{
    self.barStyle = FLEXSTR2INT(_gStyle);
}

FLEXSET(translucent)
{
    self.translucent = String2BOOL(sValue);
}

FLEXSET(tintColor)
{
    self.tintColor = colorFromString(sValue);
}

FLEXSET(barTintColor)
{
    self.barTintColor = colorFromString(sValue);
}

@end
