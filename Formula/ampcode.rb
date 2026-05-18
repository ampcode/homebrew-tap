class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779121121-gb27313"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779121121-gb27313/amp-darwin-arm64"
      sha256 "0710d3516985808bb8423914e4940973fb0301298461ff296e0cd646a1c4c2aa"
    else
      url "https://static.ampcode.com/cli/0.0.1779121121-gb27313/amp-darwin-x64"
      sha256 "de86ff41621aff3602032bfa76d4fd1027010cd74b41a8ea5b1b4e70d7260d8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779121121-gb27313/amp-linux-arm64"
      sha256 "98e7c66171b842ba96f91bac29bb125e3417447923872b52a0e810f5a2e6e209"
    else
      url "https://static.ampcode.com/cli/0.0.1779121121-gb27313/amp-linux-x64"
      sha256 "c4bad298576bf287c9585c9420c1c23b35298cfbe161fb8f78dacf31992049ce"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
