export default function (date) {
    if (Date.now() - date > 10 * 60 * 1000) {
        return true;
    }
    return false;
}
