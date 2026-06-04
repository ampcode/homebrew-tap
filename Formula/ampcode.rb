class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780580310-g6c808e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780580310-g6c808e/amp-darwin-arm64"
      sha256 "ddeaf49bb02ec8b4a1510ce373d9376663d77e7b5cb1458af89a041a843d29e3"
    else
      url "https://static.ampcode.com/cli/0.0.1780580310-g6c808e/amp-darwin-x64"
      sha256 "4ec62e2fc630462652726abc2a1355632327b62360fca2e97e7432423ba40a90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780580310-g6c808e/amp-linux-arm64"
      sha256 "2f5faba52c2e3d62b5ea4c770e2830b032ac12d8b69ff14bdfbe9c6fcca7da36"
    else
      url "https://static.ampcode.com/cli/0.0.1780580310-g6c808e/amp-linux-x64"
      sha256 "72260e2d2fb4d811c23a0792263d7a530d0302bbaf21a42733e6b950339dc09d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
