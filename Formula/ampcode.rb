class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774936733-g4206cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774936733-g4206cc/amp-darwin-arm64"
      sha256 "483361d9e5f1f05da9b852f790c6c622e5f11d0ea124607e1e2b1daa8ba412d5"
    else
      url "https://static.ampcode.com/cli/0.0.1774936733-g4206cc/amp-darwin-x64"
      sha256 "2746ca8541d964300aed47621f14050c2921b90b5c04c7923edacde05a74737e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774936733-g4206cc/amp-linux-arm64"
      sha256 "1860e69fb3a2c9c1d876a4feb3e8fa2519d0a1f292b028cab7004d31293826ce"
    else
      url "https://static.ampcode.com/cli/0.0.1774936733-g4206cc/amp-linux-x64"
      sha256 "6519a77b9bb2f94cbadad4c3d17ed6127c277bbf434da20358c9c5a3409e41ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
