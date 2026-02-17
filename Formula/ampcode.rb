class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771313506-g75b756"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771313506-g75b756/amp-darwin-arm64"
      sha256 "9dec2b3ab7a0567b656850dd8102a68887d1e1ec1665680d9384f4f44b41a595"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771313506-g75b756/amp-darwin-x64"
      sha256 "2ed6bc2de4fb57ebb7071b2941e4fff3bee052a25810d310b18ba5113c6a78a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771313506-g75b756/amp-linux-arm64"
      sha256 "39d63ac295019f4ca1de54625690389488f3b6d2cde9e01de5e4db8b9dbc6837"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771313506-g75b756/amp-linux-x64"
      sha256 "38d244439e767dcc616d93d826d6779767f26eaac045ec235188b05c9887c39f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
