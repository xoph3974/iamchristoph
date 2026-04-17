#!/bin/bash
# ============================================================
# download-images.sh
# Downloads all portfolio images from the CDN and saves them
# locally so you can self-host them on GitHub Pages.
#
# Usage:
#   chmod +x download-images.sh
#   ./download-images.sh
#
# After running, update the <img src="..."> paths in each
# HTML file from the CDN URLs to: assets/images/<folder>/<file>
# ============================================================

BASE="https://uxfolio-prod.s3.us-east-1.amazonaws.com/5d69a3c332b0d60004a27121"

mkdir -p assets/images/shared
mkdir -p assets/images/home
mkdir -p assets/images/text-to-pay
mkdir -p assets/images/maven
mkdir -p assets/images/brand

echo "Downloading shared / profile..."
curl -s -o assets/images/shared/profile.png "$BASE/xoph_gp--colorized-circle_SW6.png"

echo "Downloading home thumbnails..."
curl -s -o assets/images/home/thumb-text-to-pay.gif "$BASE/60858a6430f6dc000359a7a9/Ti4zZMqhty8QL0No.gif"
curl -s -o assets/images/home/thumb-maven.gif       "$BASE/601f34f518048900036a07bc/PCDnC1oKSwITZMHK.gif"
curl -s -o assets/images/home/thumb-brand.gif       "$BASE/608f3402f75bb400038028b2/Zpo1ed4DuWlt8dZW.gif"

echo "Downloading Text-to-Pay images..."
curl -s -o assets/images/text-to-pay/hero.gif       "$BASE/60858a6430f6dc000359a7a9/84EV9ZSVRWl0ucxM.gif"
curl -s -o assets/images/text-to-pay/img-01.png     "$BASE/60858a6430f6dc000359a7a9/WyUaogIFORrhc1ar.png"
curl -s -o assets/images/text-to-pay/img-02.png     "$BASE/60858a6430f6dc000359a7a9/tMVFQZaUB5WTbd6l.png"
curl -s -o assets/images/text-to-pay/img-03.png     "$BASE/60858a6430f6dc000359a7a9/z7Z0b0JIqebhYkGz.png"
curl -s -o assets/images/text-to-pay/img-04.png     "$BASE/60858a6430f6dc000359a7a9/DiNHjpP3bLHfLQBz.png"
curl -s -o assets/images/text-to-pay/img-05.png     "$BASE/60858a6430f6dc000359a7a9/eSlaa2p9NqwyNcLs.png"
curl -s -o assets/images/text-to-pay/img-06.png     "$BASE/60858a6430f6dc000359a7a9/kOeogWSC1ExYtfy4.png"
curl -s -o assets/images/text-to-pay/img-07.png     "$BASE/60858a6430f6dc000359a7a9/TOJB4PFOsejPI1Tf.png"
curl -s -o assets/images/text-to-pay/img-08.png     "$BASE/60858a6430f6dc000359a7a9/1SJiBPn7iu04UIAC.png"
curl -s -o assets/images/text-to-pay/img-09.png     "$BASE/60858a6430f6dc000359a7a9/kqZLnEh8DRImSnzy.png"
curl -s -o assets/images/text-to-pay/img-10.png     "$BASE/60858a6430f6dc000359a7a9/bEoMDil9iVeCaMhV.png"
curl -s -o assets/images/text-to-pay/img-11.png     "$BASE/60858a6430f6dc000359a7a9/7EXtQuN9MO18XVN2.png"
curl -s -o assets/images/text-to-pay/img-12.png     "$BASE/60858a6430f6dc000359a7a9/WUMrsmLruMEkzfE4.png"
curl -s -o assets/images/text-to-pay/img-13.png     "$BASE/60858a6430f6dc000359a7a9/iZ7qxIOwz2bIfo0x.png"
curl -s -o assets/images/text-to-pay/img-14.png     "$BASE/60858a6430f6dc000359a7a9/32jB5Fj3DimmNqyd.png"
curl -s -o assets/images/text-to-pay/img-15.png     "$BASE/60858a6430f6dc000359a7a9/iB1qyoPjcm0p9lPa.png"
curl -s -o assets/images/text-to-pay/img-16.png     "$BASE/60858a6430f6dc000359a7a9/BVYscuXbzR0MqXmL.png"
curl -s -o assets/images/text-to-pay/img-17.png     "$BASE/60858a6430f6dc000359a7a9/C3XufivD4FfdcWdy.png"
curl -s -o assets/images/text-to-pay/img-18.png     "$BASE/60858a6430f6dc000359a7a9/A355hZVvogayFHlV.png"
curl -s -o assets/images/text-to-pay/img-19.png     "$BASE/60858a6430f6dc000359a7a9/kcUolEzVACmM582Z.png"
curl -s -o assets/images/text-to-pay/img-20.png     "$BASE/60858a6430f6dc000359a7a9/3KDFYFfge6a6FwJ0.png"

echo "Downloading Maven dashboard images..."
curl -s -o assets/images/maven/hero.gif             "$BASE/601f34f518048900036a07bc/PCDnC1oKSwITZMHK.gif"
curl -s -o assets/images/maven/img-01.gif           "$BASE/601f34f518048900036a07bc/is3GozwfL6Y9HKDc.gif"
curl -s -o assets/images/maven/img-02.gif           "$BASE/601f34f518048900036a07bc/grGhgzueGyJTlnGF.gif"
curl -s -o assets/images/maven/img-03.png           "$BASE/601f34f518048900036a07bc/tMVFQZaUB5WTbd6l.png"
curl -s -o assets/images/maven/img-04.gif           "$BASE/601f34f518048900036a07bc/WdUkhQU0rmVW0hzf.gif"
curl -s -o assets/images/maven/img-05.png           "$BASE/601f34f518048900036a07bc/DiNHjpP3bLHfLQBz.png"
curl -s -o assets/images/maven/img-06.png           "$BASE/601f34f518048900036a07bc/A8wdVSh0C4084FSE.png"
curl -s -o assets/images/maven/img-07.png           "$BASE/601f34f518048900036a07bc/W56bnQYcfgl6k1eC.png"

echo "Downloading Brand / Design System images..."
curl -s -o assets/images/brand/hero.gif             "$BASE/608f3402f75bb400038028b2/Zpo1ed4DuWlt8dZW.gif"
curl -s -o assets/images/brand/img-01.png           "$BASE/608f3402f75bb400038028b2/wf7aAulOHPhzIJV8.png"
curl -s -o assets/images/brand/img-02.png           "$BASE/608f3402f75bb400038028b2/k5Pjpy3CJXvOlKtz.png"
curl -s -o assets/images/brand/img-03.png           "$BASE/608f3402f75bb400038028b2/VxjAGwB5a3Rdx0qa.png"
curl -s -o assets/images/brand/img-04.png           "$BASE/608f3402f75bb400038028b2/21ZVLVgQCeBFluRL.png"
curl -s -o assets/images/brand/img-05.png           "$BASE/608f3402f75bb400038028b2/NtweUpefnDtP5MPF.png"
curl -s -o assets/images/brand/img-06.png           "$BASE/608f3402f75bb400038028b2/gQoZDUu3CpByRm9c.png"
curl -s -o assets/images/brand/img-07.png           "$BASE/608f3402f75bb400038028b2/DLhruEmAMbOq3rQn.png"

echo ""
echo "✅ All images downloaded to assets/images/"
echo ""
echo "Next step: if you want fully self-hosted images, do a find-and-replace"
echo "in each HTML file — swap the CDN URL base:"
echo "  https://uxfolio-prod.s3.us-east-1.amazonaws.com/5d69a3c332b0d60004a27121"
echo "with: assets/images"
echo ""
echo "For example, in index.html change each src to match the local paths above."
