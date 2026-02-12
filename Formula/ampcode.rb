class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770898017-gd22bb5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770898017-gd22bb5/amp-darwin-arm64"
      sha256 "31455ad67c8ddc07b7b08feb74bf71890863132a200383ef7c30a6bf5ee1049f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770898017-gd22bb5/amp-darwin-x64"
      sha256 "f1a03b745505ca1a33641632678015dc87338561760a91f20b8cda688f7fa9be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770898017-gd22bb5/amp-linux-arm64"
      sha256 "f7637a5edb4ca7c438ae765d135d1bd1bb6ea014c1cc1dfc080dcbff5b955975"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770898017-gd22bb5/amp-linux-x64"
      sha256 "a03910b59f972f878911d1dae07641bb08f9b6c1c4798abdad2b3e286ce3da94"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
