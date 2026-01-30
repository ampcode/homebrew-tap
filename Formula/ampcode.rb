class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769774567-g3dfaea"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769774567-g3dfaea/amp-darwin-arm64"
      sha256 "2ffc4d29afa0debc96e23eefce032689ee2acad172678905ceb6c57510327e59"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769774567-g3dfaea/amp-darwin-x64"
      sha256 "510e424cce807176b1001dabc5e7999b91904f55dd773d85c781e87f7b4a8911"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769774567-g3dfaea/amp-linux-arm64"
      sha256 "4dd481f625e21ee8487f4032fab1e2edc6a25d698f72dd6685b3c093206c6408"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769774567-g3dfaea/amp-linux-x64"
      sha256 "9817337ac1bd91ba082f6726983e067bb27242840f085189ff6a87fdad2ee8e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
