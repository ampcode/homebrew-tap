class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770149207-ge3ec8b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770149207-ge3ec8b/amp-darwin-arm64"
      sha256 "b30196f57d523393e5d7f01d51e66e9db944fcd3a5a87fdf6a69b57c26715e17"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770149207-ge3ec8b/amp-darwin-x64"
      sha256 "56e9583ab83cd53e4383471f01b29512478142256fdc969a68fb8b0f99bb7d22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770149207-ge3ec8b/amp-linux-arm64"
      sha256 "9979c60d9ba70f5c5f4003bd72aa0b188589228942a744235a7fbf60a53e4284"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770149207-ge3ec8b/amp-linux-x64"
      sha256 "1952c4edd137f5e858e593b0c8a7fcc90eb0dc1a0211fc49fea2abed6f877d1c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
