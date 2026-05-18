class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779094967-g3f6594"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779094967-g3f6594/amp-darwin-arm64"
      sha256 "475aa844e90b4309b20a9be71b287419536b2ae2a8199b5903db03fb4dc4004d"
    else
      url "https://static.ampcode.com/cli/0.0.1779094967-g3f6594/amp-darwin-x64"
      sha256 "94b793d934dda425b0247a58178036bb45af25f31b44d000e10d7667218236f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779094967-g3f6594/amp-linux-arm64"
      sha256 "c35d356a3b413787fc0e6da19087aad2887de013cd66ddaee6e612ac72229a72"
    else
      url "https://static.ampcode.com/cli/0.0.1779094967-g3f6594/amp-linux-x64"
      sha256 "c38d2946a2b043085ce23e830df261e47cc407ef18d427c3469bd426d9df076c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
