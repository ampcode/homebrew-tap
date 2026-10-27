class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793131239-gb51991"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793131239-gb51991/amp-darwin-arm64"
      sha256 "8c8070d2214eb90b365d43b337357d2e202cb650ce2278ae192a27ff65d2ca8a"
    else
      url "https://static.ampcode.com/cli/0.0.1793131239-gb51991/amp-darwin-x64"
      sha256 "21a7b81ef4b62003c8b62449b868bf9ea74fd6db89cb9ec1aba967adce8ae179"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793131239-gb51991/amp-linux-arm64"
      sha256 "5fcfd9edb6b142f37199076f20a8f6f19334148e3115bf76a677f5021c8a9b01"
    else
      url "https://static.ampcode.com/cli/0.0.1793131239-gb51991/amp-linux-x64"
      sha256 "074d5a0ca7c0b9ab7efdec5c39a887b2cc65738b1c83e5c4d090d6733f2c9de4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
