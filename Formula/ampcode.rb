class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774527081-g3aaaa4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774527081-g3aaaa4/amp-darwin-arm64"
      sha256 "c0c529e3890a26814ebfb0606dff7e865e0df7cbed825a4166bb4c431a92cb51"
    else
      url "https://static.ampcode.com/cli/0.0.1774527081-g3aaaa4/amp-darwin-x64"
      sha256 "a8d4e58c208cfdea44d2f8c8fe1bf73e4f938c4f76c283d27c8bdc786b59dc52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774527081-g3aaaa4/amp-linux-arm64"
      sha256 "72b233d1f244f7b23147ade86d03189aac34fae7effd877819dc887237cc102c"
    else
      url "https://static.ampcode.com/cli/0.0.1774527081-g3aaaa4/amp-linux-x64"
      sha256 "96c5ecef345c31435273e0a60537cd67eba0dfb2121dff80f940a0898d308772"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
