class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781626555-g18279c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781626555-g18279c/amp-darwin-arm64"
      sha256 "c1fdf34f3d1aea202cf4b8538b594ebdc780e37c7c1b9aa34f4d16cb6468fb75"
    else
      url "https://static.ampcode.com/cli/0.0.1781626555-g18279c/amp-darwin-x64"
      sha256 "b2257d40182f911ecfccd8170de6a445737fa8eda019c250727eb7ca89b16af8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781626555-g18279c/amp-linux-arm64"
      sha256 "c803c963eec4902d3798f29d25f824df66554af1c583e329dafcf46f2e7b63de"
    else
      url "https://static.ampcode.com/cli/0.0.1781626555-g18279c/amp-linux-x64"
      sha256 "f8006948b00dabcbbf4bb9286234beeaf8ac0bf0ec567d0e1c3ebd30419c9178"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
