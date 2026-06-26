class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782494818-g890a1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782494818-g890a1a/amp-darwin-arm64"
      sha256 "6d879b824b3df5f8574ef174154b567202961b282d381b2541c7836041c31868"
    else
      url "https://static.ampcode.com/cli/0.0.1782494818-g890a1a/amp-darwin-x64"
      sha256 "941c8d0622865f71c619294bdd8c5eab053fe858c3110235945bf52976255b9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782494818-g890a1a/amp-linux-arm64"
      sha256 "f5223019cedcc4cb52c28299135f6632b1ff761a9c0666673c4895fc78715884"
    else
      url "https://static.ampcode.com/cli/0.0.1782494818-g890a1a/amp-linux-x64"
      sha256 "5cca07a4ccb2717dd6b75bcece338dc760b471e94c4e513f6dd7ceabba05d294"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
