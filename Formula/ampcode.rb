class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785861307-g4e053f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785861307-g4e053f/amp-darwin-arm64"
      sha256 "9fa8f4538c4be57cf66263bf32c7d6f79855f6a50428e3784ba6adcd4c78cb36"
    else
      url "https://static.ampcode.com/cli/0.0.1785861307-g4e053f/amp-darwin-x64"
      sha256 "a3a33f2ab66b04f41ce9713a42eaab584ae6914ae3c163dbe391cf33cd43cfd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785861307-g4e053f/amp-linux-arm64"
      sha256 "8bec679bbaabf5ea20d4062d57a9c727629a79bea721073174041b42d475ae43"
    else
      url "https://static.ampcode.com/cli/0.0.1785861307-g4e053f/amp-linux-x64"
      sha256 "38ffd20b0b969de67814027a591189fbf6443b1d7da7230de41e46360919dc61"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
