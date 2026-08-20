class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787184152-g4608ac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787184152-g4608ac/amp-darwin-arm64"
      sha256 "53e49ce3aa0439b5b642f1eb134ff9a2430cd34c5a79c5f9a35ec7425319fad4"
    else
      url "https://static.ampcode.com/cli/0.0.1787184152-g4608ac/amp-darwin-x64"
      sha256 "d03c7b160d3025d9d163532d3a975975b9f7ccf2aab01a5c406a822c84b07f07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787184152-g4608ac/amp-linux-arm64"
      sha256 "5420c6869840ea428628a23e430305144e4368078a3206793cc57f255a3df54a"
    else
      url "https://static.ampcode.com/cli/0.0.1787184152-g4608ac/amp-linux-x64"
      sha256 "8395c4d8dd44568d1344469569495f90857ff9d3fb5a0d975465271319609177"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
