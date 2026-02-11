class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770768480-ge56951"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770768480-ge56951/amp-darwin-arm64"
      sha256 "acb43450e1ceb46cc08b8740b01b7ea454425e88a14d4a0e5301e0664b793fa6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770768480-ge56951/amp-darwin-x64"
      sha256 "b474c0c32ae1cc6d6e1118fa8f1faf79a70a8c500c7f6fe79f98bb46195fce65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770768480-ge56951/amp-linux-arm64"
      sha256 "1f118ea0d983a9c4f9476429df068dca5c0cfc158ec43fe5d9122be3d6b3fb78"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770768480-ge56951/amp-linux-x64"
      sha256 "62fb8dbe0a51520400d4c1fc773e63303994b3c1605e7924bbcd396a3fb587cb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
