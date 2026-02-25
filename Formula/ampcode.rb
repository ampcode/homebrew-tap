class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772010584-g76c29a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772010584-g76c29a/amp-darwin-arm64"
      sha256 "f389275d48cbd14be42d97d55b75cfc1a1308c8d4ea84efa8171ba77d9064b85"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772010584-g76c29a/amp-darwin-x64"
      sha256 "80d91bdd41b415cfdbc463b4e7452bc031b9b63bf9bcafeea7ccccb5f7b387e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772010584-g76c29a/amp-linux-arm64"
      sha256 "e4dba8e5e165abb716c564dcc0c8435e6abdfd8fb96298b200acb72e35301368"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772010584-g76c29a/amp-linux-x64"
      sha256 "2edc57299f02812622003164f5d4c4f15b7ddfda0f83c870aa3fd8735db187c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
