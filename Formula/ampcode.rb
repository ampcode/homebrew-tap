class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783038096-g491b5f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783038096-g491b5f/amp-darwin-arm64"
      sha256 "a97264de2a23f749f31d0ef60733af435c8e07d2ac9b355817bf477e2bcf7abe"
    else
      url "https://static.ampcode.com/cli/0.0.1783038096-g491b5f/amp-darwin-x64"
      sha256 "c40e4055d9305d6bec2ca54aa2363f622bdc05e7d0b10e401f6a357be35d76fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783038096-g491b5f/amp-linux-arm64"
      sha256 "b2dca2e04396a00df1fec092fcb46295f52efec9fc8aa9099ca1dd0478f37823"
    else
      url "https://static.ampcode.com/cli/0.0.1783038096-g491b5f/amp-linux-x64"
      sha256 "d7d246f9211b01104811b52c41768af2114349f34524bc3d5ea885da2fb632e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
