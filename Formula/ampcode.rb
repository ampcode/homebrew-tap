class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788412044-g268158"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788412044-g268158/amp-darwin-arm64"
      sha256 "518659d1c8e51b18802b24ab7dfa127ff499d056a2dcb74e7b46acd4c4222c4a"
    else
      url "https://static.ampcode.com/cli/0.0.1788412044-g268158/amp-darwin-x64"
      sha256 "c302aa04b13d11eebf36fc8c851e69cb75503e34c458e1277e4c5edab4a64a54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788412044-g268158/amp-linux-arm64"
      sha256 "1ddb00ef31a51d521944dfd274499c3d29182b6a4caea741dd23bc0d9bda857c"
    else
      url "https://static.ampcode.com/cli/0.0.1788412044-g268158/amp-linux-x64"
      sha256 "10c69b4981ae8fbdb76f47fd662964dad026031615d4a2900e78f1b9b0222979"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
