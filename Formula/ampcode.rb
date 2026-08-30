class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788091238-g043a16"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788091238-g043a16/amp-darwin-arm64"
      sha256 "deeb261151a7f08416e1a09b71cba7877daec9d2ec36dfd40a6751235b9ee966"
    else
      url "https://static.ampcode.com/cli/0.0.1788091238-g043a16/amp-darwin-x64"
      sha256 "fcd7031ba8774be00fd104dacb75fa899bf85cb4a7dbf6ff92ebe787f221c588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788091238-g043a16/amp-linux-arm64"
      sha256 "0f46582a2a42c6791677cce22e0f28127911b94c6ff06d785ff115b87b9a7662"
    else
      url "https://static.ampcode.com/cli/0.0.1788091238-g043a16/amp-linux-x64"
      sha256 "208addae81beca481b2d7e68985a2599b2405cee230bc8ad854fa71a251eb37e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
