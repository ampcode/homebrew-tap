class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778057090-g80f5f1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778057090-g80f5f1/amp-darwin-arm64"
      sha256 "f470ffb42268a8f2b13c592cb919aca48e5dc34852f1e950b43fd58d4a6a8e11"
    else
      url "https://static.ampcode.com/cli/0.0.1778057090-g80f5f1/amp-darwin-x64"
      sha256 "923be4d03ccd7b33961ca86f2b562a9495b2c95f5127cbcb0e7e3a36c15efb2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778057090-g80f5f1/amp-linux-arm64"
      sha256 "535e77519783cc49907674a752f4685a2edecf14f7410c2dcf740d316d925e9a"
    else
      url "https://static.ampcode.com/cli/0.0.1778057090-g80f5f1/amp-linux-x64"
      sha256 "7f0a4b49d5c6ada269e85978dcb1d8e2728aba6e1e2c5bcd605a60ca92f8d190"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
