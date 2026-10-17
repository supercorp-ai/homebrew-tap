# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.12.tgz"
      sha256 "cad6a4bfbaae304226a96c840874fee561fe74c174b5ccd0122199bea147cd90"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.12.tgz"
      sha256 "f2f0ae60d2ac5f30535afcba2591c0ede1e9762690906319b67a0f79c4af8eb4"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.12.tgz"
      sha256 "23dc7d2ad027dc979c6f6e0f24b9e2f3fd034b3f1ce429bfc4aabbc05b984ddd"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.12.tgz"
      sha256 "110e2eb08a1eb592f386080d9b90a195f33b3217a6ea2aad882822ca8503b9c2"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
