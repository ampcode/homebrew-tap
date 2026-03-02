class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772409733-gb80900"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772409733-gb80900/amp-darwin-arm64"
      sha256 "91cea33f58fd9ee661cf129daaea5452ba682243eaa030a010e96aa915a544a7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772409733-gb80900/amp-darwin-x64"
      sha256 "8899005663bade0a8429626bd395ea20ef6872b8f2c924109f9687f3e1331347"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772409733-gb80900/amp-linux-arm64"
      sha256 "0d1f8d1656d11b91e81f90da720c30a627e2f55e4b6dc8e7fa431ef4573658a2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772409733-gb80900/amp-linux-x64"
      sha256 "072287c70ef32a41abac5611aef748cb0830adb7c820fa14bb85693ceaa90bb3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
