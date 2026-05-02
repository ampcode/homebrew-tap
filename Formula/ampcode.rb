class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777753404-g60c948"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777753404-g60c948/amp-darwin-arm64"
      sha256 "4152b7d40f87aca5bd2ba74352346152f05cf452b4065cd73e807960590dfeee"
    else
      url "https://static.ampcode.com/cli/0.0.1777753404-g60c948/amp-darwin-x64"
      sha256 "919808a7ba5f9ebd4142936582949b46022b4445daf9ce0315a58157bff81cb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777753404-g60c948/amp-linux-arm64"
      sha256 "66528e388ed0cbb543314e024022a53dfc831b7579c053eedb8357f02b87a384"
    else
      url "https://static.ampcode.com/cli/0.0.1777753404-g60c948/amp-linux-x64"
      sha256 "975beb971c5c348eb11bf3365dbe159158b7b1e7f39dde88b2ec96c4c848137c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
