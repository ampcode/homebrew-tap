class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793707234-gc72860"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793707234-gc72860/amp-darwin-arm64"
      sha256 "02f600d3036b2fd111ddfe9f986576f58c1383a3e5a25a1a113a25006c59de46"
    else
      url "https://static.ampcode.com/cli/0.0.1793707234-gc72860/amp-darwin-x64"
      sha256 "c5325d51bdae5f6f7a094cdeab83e42c51aae1f5904b015885f3c18eadb68780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793707234-gc72860/amp-linux-arm64"
      sha256 "ddcc465e9041170c20db7df661ad82e025ffdab79465372184c38455e66089dc"
    else
      url "https://static.ampcode.com/cli/0.0.1793707234-gc72860/amp-linux-x64"
      sha256 "098cf436b347df6863ab3c07da041770f91cae48393b96497d6105cb6ef3577d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
