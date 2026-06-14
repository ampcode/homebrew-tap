class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781448545-g308eb0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781448545-g308eb0/amp-darwin-arm64"
      sha256 "6edfa8d8a3edad95eaae51e99018b49554ce8527017eefbb1fea8844c4dafe3f"
    else
      url "https://static.ampcode.com/cli/0.0.1781448545-g308eb0/amp-darwin-x64"
      sha256 "68740f2c31ef974d8190d556e86082e4b28b10e0ec30cf554c2d651302be062c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781448545-g308eb0/amp-linux-arm64"
      sha256 "11fab08d4a11f9c19f1831733ed8018a9112f20c8d67b60de262455153b6e624"
    else
      url "https://static.ampcode.com/cli/0.0.1781448545-g308eb0/amp-linux-x64"
      sha256 "15923b1715c1b1cf2330dc7cb512f78874769366fe6c2602f4118b23b37b28a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
