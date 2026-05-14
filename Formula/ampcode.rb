class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778776529-gd8209f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778776529-gd8209f/amp-darwin-arm64"
      sha256 "07916b944c7fd8ca6d5a3b74c57b6a75e2fb4e5643b2547e53c0c60c2fa0e55c"
    else
      url "https://static.ampcode.com/cli/0.0.1778776529-gd8209f/amp-darwin-x64"
      sha256 "b1591f074d862d83c5e4a5f7808f0a785459f146649ece2a89064dff855161c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778776529-gd8209f/amp-linux-arm64"
      sha256 "893cee6660673f177bc0e6521e1a54d25006bdbc5bd54737f8a640f1d15df43c"
    else
      url "https://static.ampcode.com/cli/0.0.1778776529-gd8209f/amp-linux-x64"
      sha256 "7cf53aad7bf5a1c34a05daaba4e7d30030181d2cf69a3dc9beabed73416194dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
